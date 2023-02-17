part of 'account_category_bloc.dart';

enum AccountsCategory { jobSeeker, employer, superAdmin, reports }

Map<AccountsCategory, String> accountsCategoryLabels = {
  AccountsCategory.jobSeeker: "Manage Job Seeker Account",
  AccountsCategory.employer: "Manage employer Account",
  AccountsCategory.superAdmin: "Manage Super Admin User",
  AccountsCategory.reports: "reports",
};

@freezed
@injectable
abstract class AccountCategoryState with _$AccountCategoryState {
  const AccountCategoryState._();
  const factory AccountCategoryState(
      {required AccountsCategory selectedCategory}) = _AccountCategoryState;

  @override
  @factoryMethod
  factory AccountCategoryState.initial() =>
      const AccountCategoryState(selectedCategory: AccountsCategory.jobSeeker);
}
