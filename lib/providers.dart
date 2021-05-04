import 'package:riverpod/riverpod.dart';

import 'application/coin_list/coin_list_notifier.dart';
import 'domain/i_coin_repository.dart';
import 'repository/coin_repository.dart';

final coinRepositoryProvider = Provider<ICoinRepository>(
  (ref) => CoinRepository(),
);

final coinNotifierProvider =
    StateNotifierProvider<CoinListNotifier, CoinListState>(
  (ref) => CoinListNotifier(ref.watch(coinRepositoryProvider))..getCoins(),
);
