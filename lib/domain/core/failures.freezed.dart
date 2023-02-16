// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) negative,
    required TResult Function(T failedValue) isNull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? negative,
    TResult Function(T failedValue)? isNull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? negative,
    TResult Function(T failedValue)? isNull,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(Negative<T> value) negative,
    required TResult Function(IsNull<T> value) isNull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(Negative<T> value)? negative,
    TResult Function(IsNull<T> value)? isNull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(Negative<T> value)? negative,
    TResult Function(IsNull<T> value)? isNull,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$$MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MultilineCopyWith(
          _$Multiline<T> value, $Res Function(_$Multiline<T>) then) =
      __$$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$MultilineCopyWith<T, $Res> {
  __$$MultilineCopyWithImpl(
      _$Multiline<T> _value, $Res Function(_$Multiline<T>) _then)
      : super(_value, (v) => _then(v as _$Multiline<T>));

  @override
  _$Multiline<T> get _value => super._value as _$Multiline<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Multiline<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Multiline<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      __$$MultilineCopyWithImpl<T, _$Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) negative,
    required TResult Function(T failedValue) isNull,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? negative,
    TResult Function(T failedValue)? isNull,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? negative,
    TResult Function(T failedValue)? isNull,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(Negative<T> value) negative,
    required TResult Function(IsNull<T> value) isNull,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(Negative<T> value)? negative,
    TResult Function(IsNull<T> value)? isNull,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(Negative<T> value)? negative,
    TResult Function(IsNull<T> value)? isNull,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({required final T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NegativeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$NegativeCopyWith(
          _$Negative<T> value, $Res Function(_$Negative<T>) then) =
      __$$NegativeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$NegativeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$NegativeCopyWith<T, $Res> {
  __$$NegativeCopyWithImpl(
      _$Negative<T> _value, $Res Function(_$Negative<T>) _then)
      : super(_value, (v) => _then(v as _$Negative<T>));

  @override
  _$Negative<T> get _value => super._value as _$Negative<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Negative<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Negative<T> implements Negative<T> {
  const _$Negative({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.negative(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Negative<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$NegativeCopyWith<T, _$Negative<T>> get copyWith =>
      __$$NegativeCopyWithImpl<T, _$Negative<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) negative,
    required TResult Function(T failedValue) isNull,
  }) {
    return negative(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? negative,
    TResult Function(T failedValue)? isNull,
  }) {
    return negative?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? negative,
    TResult Function(T failedValue)? isNull,
    required TResult orElse(),
  }) {
    if (negative != null) {
      return negative(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(Negative<T> value) negative,
    required TResult Function(IsNull<T> value) isNull,
  }) {
    return negative(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(Negative<T> value)? negative,
    TResult Function(IsNull<T> value)? isNull,
  }) {
    return negative?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(Negative<T> value)? negative,
    TResult Function(IsNull<T> value)? isNull,
    required TResult orElse(),
  }) {
    if (negative != null) {
      return negative(this);
    }
    return orElse();
  }
}

abstract class Negative<T> implements ValueFailure<T> {
  const factory Negative({required final T failedValue}) = _$Negative<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$NegativeCopyWith<T, _$Negative<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsNullCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$IsNullCopyWith(
          _$IsNull<T> value, $Res Function(_$IsNull<T>) then) =
      __$$IsNullCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$IsNullCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$IsNullCopyWith<T, $Res> {
  __$$IsNullCopyWithImpl(_$IsNull<T> _value, $Res Function(_$IsNull<T>) _then)
      : super(_value, (v) => _then(v as _$IsNull<T>));

  @override
  _$IsNull<T> get _value => super._value as _$IsNull<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$IsNull<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$IsNull<T> implements IsNull<T> {
  const _$IsNull({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.isNull(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsNull<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$IsNullCopyWith<T, _$IsNull<T>> get copyWith =>
      __$$IsNullCopyWithImpl<T, _$IsNull<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) negative,
    required TResult Function(T failedValue) isNull,
  }) {
    return isNull(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? negative,
    TResult Function(T failedValue)? isNull,
  }) {
    return isNull?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? negative,
    TResult Function(T failedValue)? isNull,
    required TResult orElse(),
  }) {
    if (isNull != null) {
      return isNull(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(Negative<T> value) negative,
    required TResult Function(IsNull<T> value) isNull,
  }) {
    return isNull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(Negative<T> value)? negative,
    TResult Function(IsNull<T> value)? isNull,
  }) {
    return isNull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(Negative<T> value)? negative,
    TResult Function(IsNull<T> value)? isNull,
    required TResult orElse(),
  }) {
    if (isNull != null) {
      return isNull(this);
    }
    return orElse();
  }
}

abstract class IsNull<T> implements ValueFailure<T> {
  const factory IsNull({required final T failedValue}) = _$IsNull<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$IsNullCopyWith<T, _$IsNull<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
