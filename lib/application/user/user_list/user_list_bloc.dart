import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:red_ops_task/domain/user/i_user_repository.dart';
import 'package:red_ops_task/domain/user/user.dart';
import 'package:red_ops_task/domain/user/user_failure.dart';

part 'user_list_state.dart';
part 'user_list_event.dart';
part 'user_list_bloc.freezed.dart';

@injectable
class ProductListBloc extends Bloc<UserListEvent, UserListState> {
  final IUserRepository _userRepository;
  ProductListBloc(UserListState initialState, this._userRepository)
      : super(initialState) {
    on<UsersRequested>((event, emit) async {
      emit(const UserListState.loading());

      final usersOption = await _userRepository.getUsers();

      emit(usersOption.fold(
        (userFailure) {
          return UserListState.failure(userFailure);
        },
        (users) {
          return UserListState.loaded(users);
        },
      ));
    });
  }
}
