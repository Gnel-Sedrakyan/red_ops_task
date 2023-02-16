part of 'user_list_bloc.dart';

@freezed
@injectable
abstract class UserListState with _$UserListState {
  @factoryMethod
  const factory UserListState.loading() = Loading;
  const factory UserListState.loaded(List<User> user) = Loaded;
  const factory UserListState.failure(UserFailure userFailure) = Failure;
}
