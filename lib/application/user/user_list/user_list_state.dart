part of 'user_list_bloc.dart';

@freezed
@injectable
abstract class UserListState with _$UserListState {
  const UserListState._();
  const factory UserListState({
    required List<User> users,
    required Option<UserFailure> failure,
    required bool isLoading,
    required bool hasMoreItems,
    required int page,
    required String filterText,
  }) = _UserListState;

  @override
  @factoryMethod
  factory UserListState.initial() => UserListState(
        users: [],
        failure: none(),
        isLoading: true,
        page: 1,
        hasMoreItems: true,
        filterText: "",
      );

  List<User> get filteredUsers =>
      users.where((user) => user.checkIsMatchingFilter(filterText)).toList();
}
