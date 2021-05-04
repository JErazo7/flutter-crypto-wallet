// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinDto _$CoinDtoFromJson(Map<String, dynamic> json) {
  return _CoinDto.fromJson(json);
}

/// @nodoc
class _$CoinDtoTearOff {
  const _$CoinDtoTearOff();

  _CoinDto call(
      {required String id,
      required String name,
      required String symbol,
      required String image,
      @JsonKey(name: 'current_price')
          required double currentPrice,
      @JsonKey(name: 'price_change_percentage_24h')
          required double priceChange}) {
    return _CoinDto(
      id: id,
      name: name,
      symbol: symbol,
      image: image,
      currentPrice: currentPrice,
      priceChange: priceChange,
    );
  }

  CoinDto fromJson(Map<String, Object> json) {
    return CoinDto.fromJson(json);
  }
}

/// @nodoc
const $CoinDto = _$CoinDtoTearOff();

/// @nodoc
mixin _$CoinDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinDtoCopyWith<CoinDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinDtoCopyWith<$Res> {
  factory $CoinDtoCopyWith(CoinDto value, $Res Function(CoinDto) then) =
      _$CoinDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String symbol,
      String image,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(name: 'price_change_percentage_24h') double priceChange});
}

/// @nodoc
class _$CoinDtoCopyWithImpl<$Res> implements $CoinDtoCopyWith<$Res> {
  _$CoinDtoCopyWithImpl(this._value, this._then);

  final CoinDto _value;
  // ignore: unused_field
  final $Res Function(CoinDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? priceChange = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: priceChange == freezed
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CoinDtoCopyWith<$Res> implements $CoinDtoCopyWith<$Res> {
  factory _$CoinDtoCopyWith(_CoinDto value, $Res Function(_CoinDto) then) =
      __$CoinDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String symbol,
      String image,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(name: 'price_change_percentage_24h') double priceChange});
}

/// @nodoc
class __$CoinDtoCopyWithImpl<$Res> extends _$CoinDtoCopyWithImpl<$Res>
    implements _$CoinDtoCopyWith<$Res> {
  __$CoinDtoCopyWithImpl(_CoinDto _value, $Res Function(_CoinDto) _then)
      : super(_value, (v) => _then(v as _CoinDto));

  @override
  _CoinDto get _value => super._value as _CoinDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? priceChange = freezed,
  }) {
    return _then(_CoinDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: priceChange == freezed
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CoinDto extends _CoinDto {
  _$_CoinDto(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.image,
      @JsonKey(name: 'current_price') required this.currentPrice,
      @JsonKey(name: 'price_change_percentage_24h') required this.priceChange})
      : super._();

  factory _$_CoinDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CoinDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String image;
  @override
  @JsonKey(name: 'current_price')
  final double currentPrice;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  final double priceChange;

  @override
  String toString() {
    return 'CoinDto(id: $id, name: $name, symbol: $symbol, image: $image, currentPrice: $currentPrice, priceChange: $priceChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoinDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.currentPrice, currentPrice) ||
                const DeepCollectionEquality()
                    .equals(other.currentPrice, currentPrice)) &&
            (identical(other.priceChange, priceChange) ||
                const DeepCollectionEquality()
                    .equals(other.priceChange, priceChange)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(currentPrice) ^
      const DeepCollectionEquality().hash(priceChange);

  @JsonKey(ignore: true)
  @override
  _$CoinDtoCopyWith<_CoinDto> get copyWith =>
      __$CoinDtoCopyWithImpl<_CoinDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoinDtoToJson(this);
  }
}

abstract class _CoinDto extends CoinDto {
  factory _CoinDto(
      {required String id,
      required String name,
      required String symbol,
      required String image,
      @JsonKey(name: 'current_price')
          required double currentPrice,
      @JsonKey(name: 'price_change_percentage_24h')
          required double priceChange}) = _$_CoinDto;
  _CoinDto._() : super._();

  factory _CoinDto.fromJson(Map<String, dynamic> json) = _$_CoinDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'current_price')
  double get currentPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChange => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoinDtoCopyWith<_CoinDto> get copyWith =>
      throw _privateConstructorUsedError;
}
