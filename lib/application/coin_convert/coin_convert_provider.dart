import 'package:belo/application/coin_convert/coin_convert_notifier.dart';
import 'package:belo/repository/coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coinConvertNotifierProvider =
    StateNotifierProvider.autoDispose<CoinConvertNotifier, CoinConvertState>(
  (ref) => CoinConvertNotifier(ref.watch(coinRepositoryProvider), ref.read)
    ..initialize(),
);
