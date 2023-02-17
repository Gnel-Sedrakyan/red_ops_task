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
  List<User> get users => throw _privateConstructorUsedError;
  Option<UserFailure> get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasMoreItems => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get filterText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res>;
  $Res call(
      {List<User> users,
      Option<UserFailure> failure,
      bool isLoading,
      bool hasMoreItems,
      int page,
      String filterText});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  final UserListState _value;
  // ignore: unused_field
  final $Res Function(UserListState) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? failure = freezed,
    Object? isLoading = freezed,
    Object? hasMoreItems = freezed,
    Object? page = freezed,
    Object? filterText = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<UserFailure>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreItems: hasMoreItems == freezed
          ? _value.hasMoreItems
          : hasMoreItems // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      filterText: filterText == freezed
          ? _value.filterText
          : filterText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserListStateCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$$_UserListStateCopyWith(
          _$_UserListState value, $Res Function(_$_UserListState) then) =
      __$$_UserListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<User> users,
      Option<UserFailure> failure,
      bool isLoading,
      bool hasMoreItems,
      int page,
      String filterText});
}

/// @nodoc
class __$$_UserListStateCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res>
    implements _$$_UserListStateCopyWith<$Res> {
  __$$_UserListStateCopyWithImpl(
      _$_UserListState _value, $Res Function(_$_UserListState) _then)
      : super(_value, (v) => _then(v as _$_UserListState));

  @override
  _$_UserListState get _value => super._value as _$_UserListState;

  @override
  $Res call({
    Object? users = freezed,
    Object? failure = freezed,
    Object? isLoading = freezed,
    Object? hasMoreItems = freezed,
    Object? page = freezed,
    Object? filterText = freezed,
  }) {
    return _then(_$_UserListState(
      users: users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<UserFailure>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreItems: hasMoreItems == freezed
          ? _value.hasMoreItems
          : hasMoreItems // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      filterText: filterText == freezed
          ? _value.filterText
          : filterText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserListState extends _UserListState {
  const _$_UserListState(
      {required final List<User> users,
      required this.failure,
      required this.isLoading,
      required this.hasMoreItems,
      required this.page,
      required this.filterText})
      : _users = users,
        super._();

  final List<User> _users;
  @override
  List<User> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final Option<UserFailure> failure;
  @override
  final bool isLoading;
  @override
  final bool hasMoreItems;
  @override
  final int page;
  @override
  final String filterText;

  @override
  String toString() {
    return 'UserListState(users: $users, failure: $failure, isLoading: $isLoading, hasMoreItems: $hasMoreItems, page: $page, filterText: $filterText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserListState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.hasMoreItems, hasMoreItems) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.filterText, filterText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasMoreItems),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(filterText));

  @JsonKey(ignore: true)
  @override
  _$$_UserListStateCopyWith<_$_UserListState> get copyWith =>
      __$$_UserListStateCopyWithImpl<_$_UserListState>(this, _$identity);
}

abstract class _UserListState extends UserListState {
  const factory _UserListState(
      {required final List<User> users,
      required final Option<UserFailure> failure,
      required final bool isLoading,
      required final bool hasMoreItems,
      required final int page,
      required final String filterText}) = _$_UserListState;
  const _UserListState._() : super._();

  @override
  List<User> get users;
  @override
  Option<UserFailure> get failure;
  @override
  bool get isLoading;
  @override
  bool get hasMoreItems;
  @override
  int get page;
  @override
  String get filterText;
  @override
  @JsonKey(ignore: true)
  _$$_UserListStateCopyWith<_$_UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usersRequested,
    required TResult Function(String filterText) filterTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? usersRequested,
    TResult Function(String filterText)? filterTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usersRequested,
    TResult Function(String filterText)? filterTextChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersRequested value) usersRequested,
    required TResult Function(FilterTextChanged value) filterTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterTextChanged value)? filterTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterTextChanged value)? filterTextChanged,
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
}

/// @nodoc

class _$UsersRequested implements UsersRequested {
  const _$UsersRequested();

  @override
  String toString() {
    return 'UserListEvent.usersRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsersRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usersRequested,
    required TResult Function(String filterText) filterTextChanged,
  }) {
    return usersRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? usersRequested,
    TResult Function(String filterText)? filterTextChanged,
  }) {
    return usersRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usersRequested,
    TResult Function(String filterText)? filterTextChanged,
    required TResult orElse(),
  }) {
    if (usersRequested != null) {
      return usersRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersRequested value) usersRequested,
    required TResult Function(FilterTextChanged value) filterTextChanged,
  }) {
    return usersRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterTextChanged value)? filterTextChanged,
  }) {
    return usersRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterTextChanged value)? filterTextChanged,
    required TResult orElse(),
  }) {
    if (usersRequested != null) {
      return usersRequested(this);
    }
    return orElse();
  }
}

abstract class UsersRequested implements UserListEvent {
  const factory UsersRequested() = _$UsersRequested;
}

/// @nodoc
abstract class _$$FilterTextChangedCopyWith<$Res> {
  factory _$$FilterTextChangedCopyWith(
          _$FilterTextChanged value, $Res Function(_$FilterTextChanged) then) =
      __$$FilterTextChangedCopyWithImpl<$Res>;
  $Res call({String filterText});
}

/// @nodoc
class __$$FilterTextChangedCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res>
    implements _$$FilterTextChangedCopyWith<$Res> {
  __$$FilterTextChangedCopyWithImpl(
      _$FilterTextChanged _value, $Res Function(_$FilterTextChanged) _then)
      : super(_value, (v) => _then(v as _$FilterTextChanged));

  @override
  _$FilterTextChanged get _value => super._value as _$FilterTextChanged;

  @override
  $Res call({
    Object? filterText = freezed,
  }) {
    return _then(_$FilterTextChanged(
      filterText == freezed
          ? _value.filterText
          : filterText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterTextChanged implements FilterTextChanged {
  const _$FilterTextChanged(this.filterText);

  @override
  final String filterText;

  @override
  String toString() {
    return 'UserListEvent.filterTextChanged(filterText: $filterText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTextChanged &&
            const DeepCollectionEquality()
                .equals(other.filterText, filterText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filterText));

  @JsonKey(ignore: true)
  @override
  _$$FilterTextChangedCopyWith<_$FilterTextChanged> get copyWith =>
      __$$FilterTextChangedCopyWithImpl<_$FilterTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usersRequested,
    required TResult Function(String filterText) filterTextChanged,
  }) {
    return filterTextChanged(filterText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? usersRequested,
    TResult Function(String filterText)? filterTextChanged,
  }) {
    return filterTextChanged?.call(filterText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usersRequested,
    TResult Function(String filterText)? filterTextChanged,
    required TResult orElse(),
  }) {
    if (filterTextChanged != null) {
      return filterTextChanged(filterText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersRequested value) usersRequested,
    required TResult Function(FilterTextChanged value) filterTextChanged,
  }) {
    return filterTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterTextChanged value)? filterTextChanged,
  }) {
    return filterTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersRequested value)? usersRequested,
    TResult Function(FilterTextChanged value)? filterTextChanged,
    required TResult orElse(),
  }) {
    if (filterTextChanged != null) {
      return filterTextChanged(this);
    }
    return orElse();
  }
}

abstract class FilterTextChanged implements UserListEvent {
  const factory FilterTextChanged(final String filterText) =
      _$FilterTextChanged;

  String get filterText;
  @JsonKey(ignore: true)
  _$$FilterTextChangedCopyWith<_$FilterTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
