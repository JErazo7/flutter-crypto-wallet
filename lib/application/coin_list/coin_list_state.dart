part of 'coin_list_notifier.dart';

@freezed
abstract class CoinListState with _$CoinListState {
  const factory CoinListState.initial() = _Initial;
  const factory CoinListState.loading() = Loading;
  const factory CoinListState.loaded(List<Coin> coins, double totalDollars) =
      Loaded;
  const factory CoinListState.failure(CoinFailure failure) = Failure;
}
