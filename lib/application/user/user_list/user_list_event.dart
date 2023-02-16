part of 'user_list_bloc.dart';

@freezed
abstract class UserListEvent with _$UserListEvent {
  const factory UserListEvent.usersRequested({required int page}) =
      UsersRequested;
  const factory UserListEvent.filterUsersPressed() = FilterUsersPressed;
}
