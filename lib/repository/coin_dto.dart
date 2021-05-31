import 'package:flutter_crypto_wallet/domain/coin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_dto.freezed.dart';
part 'coin_dto.g.dart';

@freezed
class CoinDto with _$CoinDto {
  const CoinDto._();
  factory CoinDto({
    required String id,
    required String name,
    required String symbol,
    required String image,
    @JsonKey(name: 'current_price') required double currentPrice,
    @JsonKey(name: 'price_change_percentage_24h') required double priceChange,
  }) = _CoinDto;

  factory CoinDto.fromJson(Map<String, dynamic> json) =>
      _$CoinDtoFromJson(json);

  Coin toDomain() => Coin(
      id: id,
      name: name,
      symbol: symbol,
      image: image,
      currentPrice: currentPrice,
      priceChange: priceChange);
}
