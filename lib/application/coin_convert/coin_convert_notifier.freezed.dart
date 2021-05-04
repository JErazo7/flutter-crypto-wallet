// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin_convert_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinConvertStateTearOff {
  const _$CoinConvertStateTearOff();

  _CoinConvertState call(
      {Coin? from,
      Coin? to,
      List<Coin>? all,
      List<Coin>? portafolio,
      required String amount,
      required bool isLoading,
      required bool isPreview,
      required bool showErrorMessages,
      required Option<Either<CoinFailure, Unit>>
          convertFailureOrSuccessOption}) {
    return _CoinConvertState(
      from: from,
      to: to,
      all: all,
      portafolio: portafolio,
      amount: amount,
      isLoading: isLoading,
      isPreview: isPreview,
      showErrorMessages: showErrorMessages,
      convertFailureOrSuccessOption: convertFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $CoinConvertState = _$CoinConvertStateTearOff();

/// @nodoc
mixin _$CoinConvertState {
  Coin? get from => throw _privateConstructorUsedError;
  Coin? get to => throw _privateConstructorUsedError;
  List<Coin>? get all => throw _privateConstructorUsedError;
  List<Coin>? get portafolio => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPreview => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<CoinFailure, Unit>> get convertFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinConvertStateCopyWith<CoinConvertState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinConvertStateCopyWith<$Res> {
  factory $CoinConvertStateCopyWith(
          CoinConvertState value, $Res Function(CoinConvertState) then) =
      _$CoinConvertStateCopyWithImpl<$Res>;
  $Res call(
      {Coin? from,
      Coin? to,
      List<Coin>? all,
      List<Coin>? portafolio,
      String amount,
      bool isLoading,
      bool isPreview,
      bool showErrorMessages,
      Option<Either<CoinFailure, Unit>> convertFailureOrSuccessOption});

  $CoinCopyWith<$Res>? get from;
  $CoinCopyWith<$Res>? get to;
}

/// @nodoc
class _$CoinConvertStateCopyWithImpl<$Res>
    implements $CoinConvertStateCopyWith<$Res> {
  _$CoinConvertStateCopyWithImpl(this._value, this._then);

  final CoinConvertState _value;
  // ignore: unused_field
  final $Res Function(CoinConvertState) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? all = freezed,
    Object? portafolio = freezed,
    Object? amount = freezed,
    Object? isLoading = freezed,
    Object? isPreview = freezed,
    Object? showErrorMessages = freezed,
    Object? convertFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Coin?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Coin?,
      all: all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as List<Coin>?,
      portafolio: portafolio == freezed
          ? _value.portafolio
          : portafolio // ignore: cast_nullable_to_non_nullable
              as List<Coin>?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPreview: isPreview == freezed
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      convertFailureOrSuccessOption: convertFailureOrSuccessOption == freezed
          ? _value.convertFailureOrSuccessOption
          : convertFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CoinFailure, Unit>>,
    ));
  }

  @override
  $CoinCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $CoinCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $CoinCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $CoinCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$CoinConvertStateCopyWith<$Res>
    implements $CoinConvertStateCopyWith<$Res> {
  factory _$CoinConvertStateCopyWith(
          _CoinConvertState value, $Res Function(_CoinConvertState) then) =
      __$CoinConvertStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Coin? from,
      Coin? to,
      List<Coin>? all,
      List<Coin>? portafolio,
      String amount,
      bool isLoading,
      bool isPreview,
      bool showErrorMessages,
      Option<Either<CoinFailure, Unit>> convertFailureOrSuccessOption});

  @override
  $CoinCopyWith<$Res>? get from;
  @override
  $CoinCopyWith<$Res>? get to;
}

/// @nodoc
class __$CoinConvertStateCopyWithImpl<$Res>
    extends _$CoinConvertStateCopyWithImpl<$Res>
    implements _$CoinConvertStateCopyWith<$Res> {
  __$CoinConvertStateCopyWithImpl(
      _CoinConvertState _value, $Res Function(_CoinConvertState) _then)
      : super(_value, (v) => _then(v as _CoinConvertState));

  @override
  _CoinConvertState get _value => super._value as _CoinConvertState;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? all = freezed,
    Object? portafolio = freezed,
    Object? amount = freezed,
    Object? isLoading = freezed,
    Object? isPreview = freezed,
    Object? showErrorMessages = freezed,
    Object? convertFailureOrSuccessOption = freezed,
  }) {
    return _then(_CoinConvertState(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Coin?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Coin?,
      all: all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as List<Coin>?,
      portafolio: portafolio == freezed
          ? _value.portafolio
          : portafolio // ignore: cast_nullable_to_non_nullable
              as List<Coin>?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPreview: isPreview == freezed
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      convertFailureOrSuccessOption: convertFailureOrSuccessOption == freezed
          ? _value.convertFailureOrSuccessOption
          : convertFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CoinFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CoinConvertState implements _CoinConvertState {
  const _$_CoinConvertState(
      {this.from,
      this.to,
      this.all,
      this.portafolio,
      required this.amount,
      required this.isLoading,
      required this.isPreview,
      required this.showErrorMessages,
      required this.convertFailureOrSuccessOption});

  @override
  final Coin? from;
  @override
  final Coin? to;
  @override
  final List<Coin>? all;
  @override
  final List<Coin>? portafolio;
  @override
  final String amount;
  @override
  final bool isLoading;
  @override
  final bool isPreview;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<CoinFailure, Unit>> convertFailureOrSuccessOption;

  @override
  String toString() {
    return 'CoinConvertState(from: $from, to: $to, all: $all, portafolio: $portafolio, amount: $amount, isLoading: $isLoading, isPreview: $isPreview, showErrorMessages: $showErrorMessages, convertFailureOrSuccessOption: $convertFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoinConvertState &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.all, all) ||
                const DeepCollectionEquality().equals(other.all, all)) &&
            (identical(other.portafolio, portafolio) ||
                const DeepCollectionEquality()
                    .equals(other.portafolio, portafolio)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isPreview, isPreview) ||
                const DeepCollectionEquality()
                    .equals(other.isPreview, isPreview)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.convertFailureOrSuccessOption,
                    convertFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.convertFailureOrSuccessOption,
                    convertFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(all) ^
      const DeepCollectionEquality().hash(portafolio) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isPreview) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(convertFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$CoinConvertStateCopyWith<_CoinConvertState> get copyWith =>
      __$CoinConvertStateCopyWithImpl<_CoinConvertState>(this, _$identity);
}

abstract class _CoinConvertState implements CoinConvertState {
  const factory _CoinConvertState(
      {Coin? from,
      Coin? to,
      List<Coin>? all,
      List<Coin>? portafolio,
      required String amount,
      required bool isLoading,
      required bool isPreview,
      required bool showErrorMessages,
      required Option<Either<CoinFailure, Unit>>
          convertFailureOrSuccessOption}) = _$_CoinConvertState;

  @override
  Coin? get from => throw _privateConstructorUsedError;
  @override
  Coin? get to => throw _privateConstructorUsedError;
  @override
  List<Coin>? get all => throw _privateConstructorUsedError;
  @override
  List<Coin>? get portafolio => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isPreview => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<CoinFailure, Unit>> get convertFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoinConvertStateCopyWith<_CoinConvertState> get copyWith =>
      throw _privateConstructorUsedError;
}
