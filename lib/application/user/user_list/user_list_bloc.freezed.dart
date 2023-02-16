// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  final UserListState _value;
  // ignore: unused_field
  final $Res Function(UserListState) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$UserListStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

@factoryMethod
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'UserListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserListState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  $Res call({List<User> user});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$UserListStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$Loaded(
      user == freezed
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(final List<User> user) : _user = user;

  final List<User> _user;
  @override
  List<User> get user {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  String toString() {
    return 'UserListState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) failure,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? failure,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements UserListState {
  const factory Loaded(final List<User> user) = _$Loaded;

  List<User> get user;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
  $Res call({UserFailure userFailure});

  $UserFailureCopyWith<$Res> get userFailure;
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res> extends _$UserListStateCopyWithImpl<$Res>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, (v) => _then(v as _$Failure));

  @override
  _$Failure get _value => super._value as _$Failure;

  @override
  $Res call({
    Object? userFailure = freezed,
  }) {
    return _then(_$Failure(
      userFailure == freezed
          ? _value.userFailure
          : userFailure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get userFailure {
    return $UserFailureCopyWith<$Res>(_value.userFailure, (value) {
      return _then(_value.copyWith(userFailure: value));
    });
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.userFailure);

  @override
  final UserFailure userFailure;

  @override
  String toString() {
    return 'UserListState.failure(userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure &&
            const DeepCollectionEquality()
                .equals(other.userFailure, userFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userFailure));

  @JsonKey(ignore: true)
  @override
  _$$FailureCopyWith<_$Failure> get copyWith =>
      __$$FailureCopyWithImpl<_$Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> user) loaded,
    required TResult Function(UserFailure userFailure) failure,
  }) {
    return failure(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? failure,
  }) {
    return failure?.call(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> user)? loaded,
    TResult Function(UserFailure userFailure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(userFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements UserListState {
  const factory Failure(final UserFailure userFailure) = _$Failure;

  UserFailure get userFailure;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<_$Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) usersRequested,
    required TResult Function() filterUsersPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? usersRequested,
    TResult Function()? filterUsersPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? usersRequested,
    TResult Function()? filterUsersPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersRequested value) usersRequested,
    required TResult Function(FilterUsersPressed value) filterUsersPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterUsersPressed value)? filterUsersPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterUsersPressed value)? filterUsersPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListEventCopyWith<$Res> {
  factory $UserListEventCopyWith(
          UserListEvent value, $Res Function(UserListEvent) then) =
      _$UserListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserListEventCopyWithImpl<$Res>
    implements $UserListEventCopyWith<$Res> {
  _$UserListEventCopyWithImpl(this._value, this._then);

  final UserListEvent _value;
  // ignore: unused_field
  final $Res Function(UserListEvent) _then;
}

/// @nodoc
abstract class _$$UsersRequestedCopyWith<$Res> {
  factory _$$UsersRequestedCopyWith(
          _$UsersRequested value, $Res Function(_$UsersRequested) then) =
      __$$UsersRequestedCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$$UsersRequestedCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res>
    implements _$$UsersRequestedCopyWith<$Res> {
  __$$UsersRequestedCopyWithImpl(
      _$UsersRequested _value, $Res Function(_$UsersRequested) _then)
      : super(_value, (v) => _then(v as _$UsersRequested));

  @override
  _$UsersRequested get _value => super._value as _$UsersRequested;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$UsersRequested(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UsersRequested implements UsersRequested {
  const _$UsersRequested({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'UserListEvent.usersRequested(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersRequested &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$UsersRequestedCopyWith<_$UsersRequested> get copyWith =>
      __$$UsersRequestedCopyWithImpl<_$UsersRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) usersRequested,
    required TResult Function() filterUsersPressed,
  }) {
    return usersRequested(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? usersRequested,
    TResult Function()? filterUsersPressed,
  }) {
    return usersRequested?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? usersRequested,
    TResult Function()? filterUsersPressed,
    required TResult orElse(),
  }) {
    if (usersRequested != null) {
      return usersRequested(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersRequested value) usersRequested,
    required TResult Function(FilterUsersPressed value) filterUsersPressed,
  }) {
    return usersRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterUsersPressed value)? filterUsersPressed,
  }) {
    return usersRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterUsersPressed value)? filterUsersPressed,
    required TResult orElse(),
  }) {
    if (usersRequested != null) {
      return usersRequested(this);
    }
    return orElse();
  }
}

abstract class UsersRequested implements UserListEvent {
  const factory UsersRequested({required final int page}) = _$UsersRequested;

  int get page;
  @JsonKey(ignore: true)
  _$$UsersRequestedCopyWith<_$UsersRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterUsersPressedCopyWith<$Res> {
  factory _$$FilterUsersPressedCopyWith(_$FilterUsersPressed value,
          $Res Function(_$FilterUsersPressed) then) =
      __$$FilterUsersPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterUsersPressedCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res>
    implements _$$FilterUsersPressedCopyWith<$Res> {
  __$$FilterUsersPressedCopyWithImpl(
      _$FilterUsersPressed _value, $Res Function(_$FilterUsersPressed) _then)
      : super(_value, (v) => _then(v as _$FilterUsersPressed));

  @override
  _$FilterUsersPressed get _value => super._value as _$FilterUsersPressed;
}

/// @nodoc

class _$FilterUsersPressed implements FilterUsersPressed {
  const _$FilterUsersPressed();

  @override
  String toString() {
    return 'UserListEvent.filterUsersPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterUsersPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) usersRequested,
    required TResult Function() filterUsersPressed,
  }) {
    return filterUsersPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? usersRequested,
    TResult Function()? filterUsersPressed,
  }) {
    return filterUsersPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? usersRequested,
    TResult Function()? filterUsersPressed,
    required TResult orElse(),
  }) {
    if (filterUsersPressed != null) {
      return filterUsersPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersRequested value) usersRequested,
    required TResult Function(FilterUsersPressed value) filterUsersPressed,
  }) {
    return filterUsersPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterUsersPressed value)? filterUsersPressed,
  }) {
    return filterUsersPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterUsersPressed value)? filterUsersPressed,
    required TResult orElse(),
  }) {
    if (filterUsersPressed != null) {
      return filterUsersPressed(this);
    }
    return orElse();
  }
}

abstract class FilterUsersPressed implements UserListEvent {
  const factory FilterUsersPressed() = _$FilterUsersPressed;
}
