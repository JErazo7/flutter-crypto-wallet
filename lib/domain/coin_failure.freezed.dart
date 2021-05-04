// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinFailureTearOff {
  const _$CoinFailureTearOff();

  Unexpected unexpected() {
    return Unexpected();
  }

  TimeLimitExceeded timeLimitExceeded() {
    return TimeLimitExceeded();
  }
}

/// @nodoc
const $CoinFailure = _$CoinFailureTearOff();

/// @nodoc
mixin _$CoinFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() timeLimitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeLimitExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(TimeLimitExceeded value) timeLimitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeLimitExceeded value)? timeLimitExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinFailureCopyWith<$Res> {
  factory $CoinFailureCopyWith(
          CoinFailure value, $Res Function(CoinFailure) then) =
      _$CoinFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoinFailureCopyWithImpl<$Res> implements $CoinFailureCopyWith<$Res> {
  _$CoinFailureCopyWithImpl(this._value, this._then);

  final CoinFailure _value;
  // ignore: unused_field
  final $Res Function(CoinFailure) _then;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res> extends _$CoinFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

/// @nodoc
class _$Unexpected implements Unexpected {
  _$Unexpected();

  @override
  String toString() {
    return 'CoinFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() timeLimitExceeded,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeLimitExceeded,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(TimeLimitExceeded value) timeLimitExceeded,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeLimitExceeded value)? timeLimitExceeded,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements CoinFailure {
  factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class $TimeLimitExceededCopyWith<$Res> {
  factory $TimeLimitExceededCopyWith(
          TimeLimitExceeded value, $Res Function(TimeLimitExceeded) then) =
      _$TimeLimitExceededCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimeLimitExceededCopyWithImpl<$Res>
    extends _$CoinFailureCopyWithImpl<$Res>
    implements $TimeLimitExceededCopyWith<$Res> {
  _$TimeLimitExceededCopyWithImpl(
      TimeLimitExceeded _value, $Res Function(TimeLimitExceeded) _then)
      : super(_value, (v) => _then(v as TimeLimitExceeded));

  @override
  TimeLimitExceeded get _value => super._value as TimeLimitExceeded;
}

/// @nodoc
class _$TimeLimitExceeded implements TimeLimitExceeded {
  _$TimeLimitExceeded();

  @override
  String toString() {
    return 'CoinFailure.timeLimitExceeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimeLimitExceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() timeLimitExceeded,
  }) {
    return timeLimitExceeded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeLimitExceeded,
    required TResult orElse(),
  }) {
    if (timeLimitExceeded != null) {
      return timeLimitExceeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(TimeLimitExceeded value) timeLimitExceeded,
  }) {
    return timeLimitExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeLimitExceeded value)? timeLimitExceeded,
    required TResult orElse(),
  }) {
    if (timeLimitExceeded != null) {
      return timeLimitExceeded(this);
    }
    return orElse();
  }
}

abstract class TimeLimitExceeded implements CoinFailure {
  factory TimeLimitExceeded() = _$TimeLimitExceeded;
}
