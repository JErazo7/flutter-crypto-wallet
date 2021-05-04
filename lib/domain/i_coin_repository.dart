import 'package:dartz/dartz.dart';

import 'coin.dart';
import 'coin_failure.dart';

abstract class ICoinRepository {
  Future<Either<CoinFailure, List<Coin>>> get();

  // Este Metodo es fake, y puede devolver un fallo o un acierto
  Future<Either<CoinFailure, Unit>> updatePortafolio(Coin to, Coin from);
}
