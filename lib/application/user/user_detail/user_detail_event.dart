part of 'user_detail_bloc.dart';

@freezed
abstract class UserDetailEvent with _$UserDetailEvent {
  const factory UserDetailEvent.getUserById(UniqueId id) = GetUserById;
}
