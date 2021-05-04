// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinTearOff {
  const _$CoinTearOff();

  _Coin call(
      {required String id,
      required String name,
      required String symbol,
      required String image,
      required double currentPrice,
      required double priceChange,
      double? amount = 0.0,
      double? dollars = 0.0}) {
    return _Coin(
      id: id,
      name: name,
      symbol: symbol,
      image: image,
      currentPrice: currentPrice,
      priceChange: priceChange,
      amount: amount,
      dollars: dollars,
    );
  }
}

/// @nodoc
const $Coin = _$CoinTearOff();

/// @nodoc
mixin _$Coin {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get priceChange => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  double? get dollars => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinCopyWith<Coin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCopyWith<$Res> {
  factory $CoinCopyWith(Coin value, $Res Function(Coin) then) =
      _$CoinCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String symbol,
      String image,
      double currentPrice,
      double priceChange,
      double? amount,
      double? dollars});
}

/// @nodoc
class _$CoinCopyWithImpl<$Res> implements $CoinCopyWith<$Res> {
  _$CoinCopyWithImpl(this._value, this._then);

  final Coin _value;
  // ignore: unused_field
  final $Res Function(Coin) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? priceChange = freezed,
    Object? amount = freezed,
    Object? dollars = freezed,
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
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      dollars: dollars == freezed
          ? _value.dollars
          : dollars // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$CoinCopyWith<$Res> implements $CoinCopyWith<$Res> {
  factory _$CoinCopyWith(_Coin value, $Res Function(_Coin) then) =
      __$CoinCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String symbol,
      String image,
      double currentPrice,
      double priceChange,
      double? amount,
      double? dollars});
}

/// @nodoc
class __$CoinCopyWithImpl<$Res> extends _$CoinCopyWithImpl<$Res>
    implements _$CoinCopyWith<$Res> {
  __$CoinCopyWithImpl(_Coin _value, $Res Function(_Coin) _then)
      : super(_value, (v) => _then(v as _Coin));

  @override
  _Coin get _value => super._value as _Coin;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? priceChange = freezed,
    Object? amount = freezed,
    Object? dollars = freezed,
  }) {
    return _then(_Coin(
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
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      dollars: dollars == freezed
          ? _value.dollars
          : dollars // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
class _$_Coin implements _Coin {
  _$_Coin(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.image,
      required this.currentPrice,
      required this.priceChange,
      this.amount = 0.0,
      this.dollars = 0.0});

  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String image;
  @override
  final double currentPrice;
  @override
  final double priceChange;
  @JsonKey(defaultValue: 0.0)
  @override
  final double? amount;
  @JsonKey(defaultValue: 0.0)
  @override
  final double? dollars;

  @override
  String toString() {
    return 'Coin(id: $id, name: $name, symbol: $symbol, image: $image, currentPrice: $currentPrice, priceChange: $priceChange, amount: $amount, dollars: $dollars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coin &&
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
                    .equals(other.priceChange, priceChange)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.dollars, dollars) ||
                const DeepCollectionEquality().equals(other.dollars, dollars)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(currentPrice) ^
      const DeepCollectionEquality().hash(priceChange) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(dollars);

  @JsonKey(ignore: true)
  @override
  _$CoinCopyWith<_Coin> get copyWith =>
      __$CoinCopyWithImpl<_Coin>(this, _$identity);
}

abstract class _Coin implements Coin {
  factory _Coin(
      {required String id,
      required String name,
      required String symbol,
      required String image,
      required double currentPrice,
      required double priceChange,
      double? amount,
      double? dollars}) = _$_Coin;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  double get currentPrice => throw _privateConstructorUsedError;
  @override
  double get priceChange => throw _privateConstructorUsedError;
  @override
  double? get amount => throw _privateConstructorUsedError;
  @override
  double? get dollars => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoinCopyWith<_Coin> get copyWith => throw _privateConstructorUsedError;
}
