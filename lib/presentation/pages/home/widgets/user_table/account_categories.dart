import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:red_ops_task/application/user/user_category/account_category_bloc.dart';
import 'package:red_ops_task/injection.dart';
import 'package:red_ops_task/presentation/core/widgets/primary_button.dart';

class AccountCategories extends StatelessWidget {
  const AccountCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<AccountCategoryBloc>(),
      child: BlocBuilder<AccountCategoryBloc, AccountCategoryState>(
        builder: (BuildContext context, state) => Row(
          children: [
            ...AccountsCategory.values.map(
              (category) => PrimaryButton(
                onPressed: () {
                  context
                      .read<AccountCategoryBloc>()
                      .add(AccountCategoryEvent.categorySelected(category));
                },
                isSelected: state.selectedCategory == category,
                child: Text(accountsCategoryLabels[category]!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
