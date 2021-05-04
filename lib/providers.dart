import 'package:riverpod/riverpod.dart';

import 'application/coin_convert/coin_convert_notifier.dart';
import 'application/coin_list/coin_list_notifier.dart';
import 'domain/i_coin_repository.dart';
import 'repository/coin_repository.dart';

// Inicializao mi repositorio
final coinRepositoryProvider = Provider<ICoinRepository>(
  (ref) => CoinRepository(),
);

// Inicializao mi notifier del listado de coins
final coinNotifierProvider =
    StateNotifierProvider<CoinListNotifier, CoinListState>(
  (ref) => CoinListNotifier(ref.watch(coinRepositoryProvider))..getCoins(),
);

// Inicializao mi notifier del convertidor de coins
final coinConvertNotifierProvider =
    StateNotifierProvider<CoinConvertNotifier, CoinConvertState>(
  (ref) => CoinConvertNotifier(ref.watch(coinRepositoryProvider), ref.read)
    ..initialize(),
);
