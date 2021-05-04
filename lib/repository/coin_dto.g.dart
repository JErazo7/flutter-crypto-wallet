// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinDto _$_$_CoinDtoFromJson(Map<String, dynamic> json) {
  return _$_CoinDto(
    id: json['id'] as String,
    name: json['name'] as String,
    symbol: json['symbol'] as String,
    image: json['image'] as String,
    currentPrice: (json['current_price'] as num).toDouble(),
    priceChange: (json['price_change_percentage_24h'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_CoinDtoToJson(_$_CoinDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'price_change_percentage_24h': instance.priceChange,
    };
