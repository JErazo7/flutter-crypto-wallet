import 'package:belo/application/coin_list/coin_list_notifier.dart';
import 'package:belo/repository/coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coinNotifierProvider =
    StateNotifierProvider<CoinListNotifier, CoinListState>(
  (ref) => CoinListNotifier(ref.watch(coinRepositoryProvider))..getCoins(),
);
