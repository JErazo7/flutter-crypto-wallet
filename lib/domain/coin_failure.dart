import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_failure.freezed.dart';

@freezed
class CoinFailure with _$CoinFailure {
  factory CoinFailure.unexpected() = Unexpected;
}
