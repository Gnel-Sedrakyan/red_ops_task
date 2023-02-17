import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:red_ops_task/application/user/user_list/user_list_bloc.dart';
import 'package:red_ops_task/presentation/core/constants/defalut_values.dart';
import 'package:red_ops_task/presentation/core/widgets/surface.dart';
import 'package:red_ops_task/presentation/pages/home/widgets/user_cart.dart';
import 'package:red_ops_task/presentation/pages/home/widgets/search_bar.dart';
import 'package:red_ops_task/presentation/pages/home/widgets/table_header.dart';
import 'package:red_ops_task/presentation/pages/home/widgets/user_table/account_categories.dart';

class UserTable extends StatefulWidget {
  const UserTable({
    Key? key,
  }) : super(key: key);

  @override
  State<UserTable> createState() => _UserTableState();
}

class _UserTableState extends State<UserTable> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<UserListBloc>().add(const UserListEvent.usersRequested());

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.extentAfter == 0) {
      context.read<UserListBloc>().add(const UserListEvent.usersRequested());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Surface(
      height: 990,
      child: Padding(
        padding: const EdgeInsets.only(
            top: defaultPadding, left: defaultPadding, right: defaultPadding),
        child: BlocBuilder<UserListBloc, UserListState>(
          builder: (BuildContext context, state) {
            return Column(
              children: [
                const AccountCategories(),
                const SizedBox(
                  height: 30,
                ),
                SearchBar(
                  onChanged: (text) {
                    context
                        .read<UserListBloc>()
                        .add(UserListEvent.filterTextChanged(text));
                  },
                ),
                const TableHeader(),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: state.users.length,
                    itemBuilder: (context, index) {
                      if (index == state.users.length - 1) {
                        if (state.isLoading) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else if (!state.hasMoreItems) {
                          return const Center(child: Text('End of list'));
                        }
                      }
                      final user = state.users[index];
                      return UserCart(
                        user: user,
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
