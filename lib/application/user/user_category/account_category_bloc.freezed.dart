// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountCategoryState {
  AccountsCategory get selectedCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountCategoryStateCopyWith<AccountCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCategoryStateCopyWith<$Res> {
  factory $AccountCategoryStateCopyWith(AccountCategoryState value,
          $Res Function(AccountCategoryState) then) =
      _$AccountCategoryStateCopyWithImpl<$Res>;
  $Res call({AccountsCategory selectedCategory});
}

/// @nodoc
class _$AccountCategoryStateCopyWithImpl<$Res>
    implements $AccountCategoryStateCopyWith<$Res> {
  _$AccountCategoryStateCopyWithImpl(this._value, this._then);

  final AccountCategoryState _value;
  // ignore: unused_field
  final $Res Function(AccountCategoryState) _then;

  @override
  $Res call({
    Object? selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as AccountsCategory,
    ));
  }
}

/// @nodoc
abstract class _$$_AccountCategoryStateCopyWith<$Res>
    implements $AccountCategoryStateCopyWith<$Res> {
  factory _$$_AccountCategoryStateCopyWith(_$_AccountCategoryState value,
          $Res Function(_$_AccountCategoryState) then) =
      __$$_AccountCategoryStateCopyWithImpl<$Res>;
  @override
  $Res call({AccountsCategory selectedCategory});
}

/// @nodoc
class __$$_AccountCategoryStateCopyWithImpl<$Res>
    extends _$AccountCategoryStateCopyWithImpl<$Res>
    implements _$$_AccountCategoryStateCopyWith<$Res> {
  __$$_AccountCategoryStateCopyWithImpl(_$_AccountCategoryState _value,
      $Res Function(_$_AccountCategoryState) _then)
      : super(_value, (v) => _then(v as _$_AccountCategoryState));

  @override
  _$_AccountCategoryState get _value => super._value as _$_AccountCategoryState;

  @override
  $Res call({
    Object? selectedCategory = freezed,
  }) {
    return _then(_$_AccountCategoryState(
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as AccountsCategory,
    ));
  }
}

/// @nodoc

class _$_AccountCategoryState extends _AccountCategoryState {
  const _$_AccountCategoryState({required this.selectedCategory}) : super._();

  @override
  final AccountsCategory selectedCategory;

  @override
  String toString() {
    return 'AccountCategoryState(selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountCategoryState &&
            const DeepCollectionEquality()
                .equals(other.selectedCategory, selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedCategory));

  @JsonKey(ignore: true)
  @override
  _$$_AccountCategoryStateCopyWith<_$_AccountCategoryState> get copyWith =>
      __$$_AccountCategoryStateCopyWithImpl<_$_AccountCategoryState>(
          this, _$identity);
}

abstract class _AccountCategoryState extends AccountCategoryState {
  const factory _AccountCategoryState(
          {required final AccountsCategory selectedCategory}) =
      _$_AccountCategoryState;
  const _AccountCategoryState._() : super._();

  @override
  AccountsCategory get selectedCategory;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCategoryStateCopyWith<_$_AccountCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountCategoryEvent {
  AccountsCategory get category => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountsCategory category) categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AccountsCategory category)? categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountsCategory category)? categorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(categorySelected value) categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(categorySelected value)? categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(categorySelected value)? categorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountCategoryEventCopyWith<AccountCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCategoryEventCopyWith<$Res> {
  factory $AccountCategoryEventCopyWith(AccountCategoryEvent value,
          $Res Function(AccountCategoryEvent) then) =
      _$AccountCategoryEventCopyWithImpl<$Res>;
  $Res call({AccountsCategory category});
}

/// @nodoc
class _$AccountCategoryEventCopyWithImpl<$Res>
    implements $AccountCategoryEventCopyWith<$Res> {
  _$AccountCategoryEventCopyWithImpl(this._value, this._then);

  final AccountCategoryEvent _value;
  // ignore: unused_field
  final $Res Function(AccountCategoryEvent) _then;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AccountsCategory,
    ));
  }
}

/// @nodoc
abstract class _$$categorySelectedCopyWith<$Res>
    implements $AccountCategoryEventCopyWith<$Res> {
  factory _$$categorySelectedCopyWith(
          _$categorySelected value, $Res Function(_$categorySelected) then) =
      __$$categorySelectedCopyWithImpl<$Res>;
  @override
  $Res call({AccountsCategory category});
}

/// @nodoc
class __$$categorySelectedCopyWithImpl<$Res>
    extends _$AccountCategoryEventCopyWithImpl<$Res>
    implements _$$categorySelectedCopyWith<$Res> {
  __$$categorySelectedCopyWithImpl(
      _$categorySelected _value, $Res Function(_$categorySelected) _then)
      : super(_value, (v) => _then(v as _$categorySelected));

  @override
  _$categorySelected get _value => super._value as _$categorySelected;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$categorySelected(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AccountsCategory,
    ));
  }
}

/// @nodoc

class _$categorySelected implements categorySelected {
  const _$categorySelected(this.category);

  @override
  final AccountsCategory category;

  @override
  String toString() {
    return 'AccountCategoryEvent.categorySelected(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$categorySelected &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$categorySelectedCopyWith<_$categorySelected> get copyWith =>
      __$$categorySelectedCopyWithImpl<_$categorySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountsCategory category) categorySelected,
  }) {
    return categorySelected(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AccountsCategory category)? categorySelected,
  }) {
    return categorySelected?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountsCategory category)? categorySelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(categorySelected value) categorySelected,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(categorySelected value)? categorySelected,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(categorySelected value)? categorySelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class categorySelected implements AccountCategoryEvent {
  const factory categorySelected(final AccountsCategory category) =
      _$categorySelected;

  @override
  AccountsCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$categorySelectedCopyWith<_$categorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}
