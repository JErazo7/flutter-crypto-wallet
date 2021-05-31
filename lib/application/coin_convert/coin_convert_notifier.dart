import 'package:dartz/dartz.dart';
import 'package:flutter_crypto_wallet/application/coin_list/coin_list_notifier.dart';
import 'package:flutter_crypto_wallet/application/coin_list/coin_list_provider.dart';
import 'package:flutter_crypto_wallet/domain/coin.dart';
import 'package:flutter_crypto_wallet/domain/coin_failure.dart';
import 'package:flutter_crypto_wallet/domain/i_coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/core/models/confirm_model.dart';

part 'coin_convert_notifier.freezed.dart';
part 'coin_convert_state.dart';

class CoinConvertNotifier extends StateNotifier<CoinConvertState> {
  CoinConvertNotifier(this._coinRepository, this._read)
      : super(CoinConvertState.initial());

  final ICoinRepository _coinRepository;
  final Reader _read;

  void initialize() {
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
          to: portafolio.length > 1 ? portafolio[1] : coins.last);
    }
  }

  void toChanged(Coin to) {
    state = state.copyWith(to: to, validation: none(), isPreview: false);
  }

  void fromChanged(Coin from) {
    state = state.copyWith(from: from, validation: none(), isPreview: false);
  }

  void validate() {
    state =
        state.copyWith(isLoading: true, convertFailureOrSuccessOption: none());

    final amount = double.parse(state.amount);
    ValidationError? validation;
    ConfirmModel? confirm;

    // Valido que la cantidad a convertir para saber si paso o no a la pantalla
    // de confirmacion
    if (amount > 0 && amount <= state.from!.dollars!) {
      final amount = double.parse(state.amount);

      final coinTotal = amount / state.from!.currentPrice;
      final conversion = amount / state.to!.currentPrice;
      final rate = state.from!.currentPrice / state.to!.currentPrice;

      confirm = ConfirmModel(
        conversion: conversion,
        dollarsTotal: amount,
        rate: rate,
        coinTotal: coinTotal,
      );
    } else if (amount == 0) {
      validation = const ValidationError.empty();
    } else {
      validation = const ValidationError.invalid();
    }
    state = state.copyWith(
        isLoading: false,
        validation: optionOf(validation),
        confirm: confirm,
        isPreview: confirm != null);
  }

  Future<void> save() async {
    state = state.copyWith(
      isLoading: true,
      isPreview: false,
      convertFailureOrSuccessOption: none(),
    );

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

    final updatedTo = state.to!.copyWith(
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

  void onKeyboardDelete() {
    var valueString = state.amount;
    var value = valueString.substring(0, valueString.length - 1);
    if (value.isNotEmpty) {
      if (value[value.length - 1] == '.') {
        value = valueString.substring(0, value.length - 1);
      }
    }
    state = state.copyWith(
        amount: value.isEmpty ? '0' : value,
        validation: none(),
        isPreview: false);
  }

  void onKeyboardTap(String value) {
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
      state = state.copyWith(
          amount: valueString, validation: none(), isPreview: false);
    }
  }
}

@freezed
class ValidationError with _$ValidationError {
  const factory ValidationError.empty() = Empty;
  const factory ValidationError.invalid() = Invalid;
}
