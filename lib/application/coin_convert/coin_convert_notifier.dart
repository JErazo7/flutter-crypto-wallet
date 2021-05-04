import 'package:belo/application/coin_list/coin_list_notifier.dart';
import 'package:belo/domain/coin.dart';
import 'package:belo/domain/coin_failure.dart';
import 'package:belo/domain/i_coin_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../providers.dart';

part 'coin_convert_state.dart';
part 'coin_convert_notifier.freezed.dart';

class CoinConvertNotifier extends StateNotifier<CoinConvertState> {
  CoinConvertNotifier(this._coinRepository, this._read)
      : super(CoinConvertState.initial());

  final ICoinRepository _coinRepository;
  final Reader _read;

  Future<void> initialize() async {
    final coins = (_read(coinNotifierProvider) as Loaded).coins;
    final portafolio = coins
        .where((coin) => coin.amount! > 0)
        .sorted((a, b) => a.amount!.compareTo(b.amount!));

    if (portafolio.isNotEmpty) {
      state = state.copyWith(
          all: coins,
          portafolio: portafolio.toList(),
          isLoading: false,
          from: portafolio.first,
          to: coins.last);
    }
  }

  Future<void> toChanged(Coin to) async {
    state = state.copyWith(to: to, convertFailureOrSuccessOption: none());
  }

  Future<void> fromChanged(Coin from) async {
    state = state.copyWith(from: from, convertFailureOrSuccessOption: none());
  }

  Future<void> validate() async {
    state =
        state.copyWith(isLoading: true, convertFailureOrSuccessOption: none());
    var isPreview = false;

    // Valido que la cantidad a convertir para saber si paso o no a la pantalla
    // de confirmacion
    if (double.parse(state.amount) <= state.from!.dollars!) {
      isPreview = true;
    }
    state = state.copyWith(
        isLoading: false, isPreview: isPreview, showErrorMessages: true);
  }

  Future<void> convert() async {
    state =
        state.copyWith(isLoading: true, convertFailureOrSuccessOption: none());

    final amount = double.parse(state.amount);

    // Actualizo los valores de la moneda que envia
    final newDollarsOfFrom = state.from!.dollars! - amount;
    final newAmountOfFrom = newDollarsOfFrom / state.from!.currentPrice;

    final updatedFrom = state.from!.copyWith(
      amount: newAmountOfFrom,
      dollars: newDollarsOfFrom,
    );

    // Actualizo los valores de la moneda que recibe
    final newDollarsOfTo = state.to!.dollars! + amount;
    final newAmountOfTo = newDollarsOfTo / state.to!.currentPrice;

    final updatedTo = state.from!.copyWith(
      amount: newAmountOfTo,
      dollars: newDollarsOfTo,
    );

    final failureOrSuccess =
        await _coinRepository.updatePortafolio(updatedFrom, updatedTo);

    if (failureOrSuccess.isRight()) {
      _read(coinNotifierProvider.notifier)
          .coinsChanged([updatedTo, updatedFrom]);
    }

    state = state.copyWith(
        isLoading: false,
        convertFailureOrSuccessOption: optionOf(failureOrSuccess));
  }

  Future<void> onRemove() async {
    var valueString = state.amount;
    var value = valueString.substring(0, valueString.length - 1);
    if (value.isNotEmpty) {
      if (value[value.length - 1] == '.') {
        value = valueString.substring(0, value.length - 1);
      }
    }
    state = state.copyWith(amount: value.isEmpty ? '0' : value);
  }

  Future<void> onKeyboardTap(String value) async {
    var valueString = state.amount;
    valueString = valueString == '0' ? '' : valueString;
    if (valueString.length < 8) {
      if (valueString.length == 5) {
        if (!valueString.contains('.') && value != '.') {
          valueString = '$valueString.$value';
        } else if (!valueString.contains('.') || value != '.') {
          var valueString2 = valueString;
          valueString = '$valueString2$value';
        }
      } else if (value == '.') {
        if (!valueString.contains(value)) {
          if (valueString.isEmpty) {
            valueString = '0$value';
          } else {
            valueString = valueString + value;
          }
        }
      } else {
        if (valueString.contains('.')) {
          if (valueString.length - valueString.indexOf('.') - 1 < 2) {
            valueString = valueString + value;
          }
        } else {
          valueString = valueString + value;
        }
      }
      state = state.copyWith(amount: valueString);
    }
  }
}
