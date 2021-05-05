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
class _$ValidationErrorTearOff {
  const _$ValidationErrorTearOff();

  Empty empty() {
    return const Empty();
  }

  Invalid invalid() {
    return const Invalid();
  }
}

/// @nodoc
const $ValidationError = _$ValidationErrorTearOff();

/// @nodoc
mixin _$ValidationError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Invalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Invalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) then) =
      _$ValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._value, this._then);

  final ValidationError _value;
  // ignore: unused_field
  final $Res Function(ValidationError) _then;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$ValidationErrorCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc
class _$Empty implements Empty {
  const _$Empty();

  @override
  String toString() {
    return 'ValidationError.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() invalid,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Invalid value) invalid,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements ValidationError {
  const factory Empty() = _$Empty;
}

/// @nodoc
abstract class $InvalidCopyWith<$Res> {
  factory $InvalidCopyWith(Invalid value, $Res Function(Invalid) then) =
      _$InvalidCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidCopyWithImpl<$Res> extends _$ValidationErrorCopyWithImpl<$Res>
    implements $InvalidCopyWith<$Res> {
  _$InvalidCopyWithImpl(Invalid _value, $Res Function(Invalid) _then)
      : super(_value, (v) => _then(v as Invalid));

  @override
  Invalid get _value => super._value as Invalid;
}

/// @nodoc
class _$Invalid implements Invalid {
  const _$Invalid();

  @override
  String toString() {
    return 'ValidationError.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Invalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() invalid,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Invalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class Invalid implements ValidationError {
  const factory Invalid() = _$Invalid;
}

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
      required Option<ValidationError> validation,
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
      validation: validation,
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
  Option<ValidationError> get validation => throw _privateConstructorUsedError;
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
      Option<ValidationError> validation,
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
    Object? validation = freezed,
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
      validation: validation == freezed
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as Option<ValidationError>,
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
      Option<ValidationError> validation,
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
    Object? validation = freezed,
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
      validation: validation == freezed
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as Option<ValidationError>,
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
      required this.validation,
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
  final Option<ValidationError> validation;
  @override
  final Option<Either<CoinFailure, Unit>> convertFailureOrSuccessOption;

  @override
  String toString() {
    return 'CoinConvertState(from: $from, to: $to, all: $all, portafolio: $portafolio, amount: $amount, isLoading: $isLoading, isPreview: $isPreview, validation: $validation, convertFailureOrSuccessOption: $convertFailureOrSuccessOption)';
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
            (identical(other.validation, validation) ||
                const DeepCollectionEquality()
                    .equals(other.validation, validation)) &&
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
      const DeepCollectionEquality().hash(validation) ^
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
      required Option<ValidationError> validation,
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
  Option<ValidationError> get validation => throw _privateConstructorUsedError;
  @override
  Option<Either<CoinFailure, Unit>> get convertFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoinConvertStateCopyWith<_CoinConvertState> get copyWith =>
      throw _privateConstructorUsedError;
}
