part of 'user_list_bloc.dart';

@freezed
abstract class UserListEvent with _$UserListEvent {
  const factory UserListEvent.usersRequested() = UsersRequested;
  const factory UserListEvent.filterTextChanged(String filterText) =
      FilterTextChanged;
}
