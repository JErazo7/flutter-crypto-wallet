import 'dart:math';

import 'package:belo/domain/coin.dart';
import 'package:belo/domain/coin_failure.dart';
import 'package:belo/domain/i_coin_repository.dart';
import 'package:belo/repository/data_source/coingecko_api.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'coin_dto.dart';

final coinRepositoryProvider = Provider<ICoinRepository>(
  (ref) => CoinRepository(),
);

class CoinRepository implements ICoinRepository {
  @override
  Future<Either<CoinFailure, List<Coin>>> get() async {
    try {
      final response = await CoingeckoApi.getCoinsMarkets();

      return right(response
          .map((jsonCoin) => CoinDto.fromJson(jsonCoin).toDomain())
          .toList());
    } catch (e) {
      return left(CoinFailure.unexpected());
    }
  }

  @override
  Future<Either<CoinFailure, Unit>> updatePortafolio(Coin to, Coin from) async {
    await Future.delayed(const Duration(seconds: 2));
    if (Random().nextBool()) {
      return left(CoinFailure.timeLimitExceeded());
    }
    return right(unit);
  }
}
