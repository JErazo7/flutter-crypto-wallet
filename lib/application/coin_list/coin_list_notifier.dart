import 'package:belo/domain/coin.dart';
import 'package:belo/domain/coin_failure.dart';
import 'package:belo/domain/i_coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_list_state.dart';
part 'coin_list_notifier.freezed.dart';

class CoinListNotifier extends StateNotifier<CoinListState> {
  CoinListNotifier(this._coinRepository) : super(const CoinListState.initial());

  final ICoinRepository _coinRepository;

  Future<void> getCoins() async {
    state = const Loading();
    final failureOrCoins = await _coinRepository.get();
    state = failureOrCoins.fold((failure) => Failure(failure), (coins) {
      var totalDollars = 0.0;
      for (var element in FakePortafolioModel.fakeList) {
        var index = coins.indexWhere((coin) => element.symbol == coin.symbol);
        if (index != -1) {
          final amount = element.amount;
          final dollars = coins[index].currentPrice * amount;
          totalDollars += dollars;
          coins[index] =
              coins[index].copyWith(amount: amount, dollars: dollars);
        }
      }
      return Loaded(coins, totalDollars);
    });
  }

  Future<void> change(Coin coin) async {
    final coins = (state as Loaded).coins;
    var total = (state as Loaded).totalDollars;

    var index = coins.indexWhere((item) => coin.symbol == item.symbol);
    if (index != -1) {
      if (coins[index].amount == 0) {
        total += coin.dollars!;
      } else {
        total -= coins[index].dollars!;
      }
      coins[index] = coin;
    }

    state = Loaded(coins, total);
  }
}

class FakePortafolioModel {
  FakePortafolioModel(this.symbol, this.amount);

  final String symbol;
  final double amount;

  static List<FakePortafolioModel> fakeList = [
    FakePortafolioModel('btc', 0.00043),
    FakePortafolioModel('doge', 16.4),
    FakePortafolioModel('eth', 1.76),
    FakePortafolioModel('dot', 8.33),
  ];
}
