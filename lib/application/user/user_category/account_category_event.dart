part of 'account_category_bloc.dart';

@freezed
abstract class AccountCategoryEvent with _$AccountCategoryEvent {
  const factory AccountCategoryEvent.categorySelected(
      AccountsCategory category) = categorySelected;
}
