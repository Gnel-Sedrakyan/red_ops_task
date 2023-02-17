import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/user/i_user_repository.dart';
import 'package:red_ops_task/domain/user/user.dart';
import 'package:red_ops_task/domain/user/user_failure.dart';

part 'user_detail_state.dart';
part 'user_detail_event.dart';
part 'user_detail_bloc.freezed.dart';

@injectable
class UserDetailBloc extends Bloc<UserDetailEvent, UserDetailState> {
  final IUserRepository _userRepository;
  UserDetailBloc(UserDetailState initialState, this._userRepository)
      : super(initialState) {
    on<GetUserById>((event, emit) async {
      emit(const UserDetailState.loading());

      final userOption = await _userRepository.getUserById(id: event.id);

      userOption.fold(
        (userFailure) {
          emit(UserDetailState.failure(userFailure));
        },
        (user) {
          emit(UserDetailState.loaded(user));
        },
      );
    });
  }
}
