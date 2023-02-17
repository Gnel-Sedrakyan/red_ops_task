part of 'user_detail_bloc.dart';

@freezed
@injectable
abstract class UserDetailState with _$UserDetailState {
  @factoryMethod
  const factory UserDetailState.loading() = Loading;
  const factory UserDetailState.loaded(User user) = Loaded;
  const factory UserDetailState.failure(UserFailure userFailure) = Failure;
}
