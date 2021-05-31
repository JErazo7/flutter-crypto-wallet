import 'package:flutter_crypto_wallet/application/coin_list/coin_list_notifier.dart';
import 'package:flutter_crypto_wallet/repository/coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coinNotifierProvider =
    StateNotifierProvider<CoinListNotifier, CoinListState>(
  (ref) => CoinListNotifier(ref.watch(coinRepositoryProvider))..getCoins(),
);
