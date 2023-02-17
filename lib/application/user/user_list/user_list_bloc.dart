import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:red_ops_task/domain/user/i_user_repository.dart';
import 'package:red_ops_task/domain/user/user.dart';
import 'package:red_ops_task/domain/user/user_failure.dart';

part 'user_list_state.dart';
part 'user_list_event.dart';
part 'user_list_bloc.freezed.dart';

@injectable
class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final IUserRepository _userRepository;
  UserListBloc(UserListState initialState, this._userRepository)
      : super(initialState) {
    on<UsersRequested>((event, emit) async {
      if (state.filterText.isNotEmpty) return;
      emit(state.copyWith(
        isLoading: true,
      ));

      final usersOption = await _userRepository.getUsers(page: state.page);

      usersOption.fold(
        (userFailure) {
          emit(state.copyWith(isLoading: false, failure: some(userFailure)));
        },
        (newUsers) {
          if (newUsers.isNotEmpty) {
            emit(state.copyWith(
              isLoading: false,
              users: [...state.users, ...newUsers],
              page: state.page + 1,
              hasMoreItems: true,
            ));
          } else {
            emit(state.copyWith(
              isLoading: false,
              hasMoreItems: false,
            ));
          }
        },
      );
    });
    on<FilterTextChanged>((event, emit) async {
      if (event.filterText.isEmpty) {
        emit(state.copyWith(
          filterText: event.filterText,
          isLoading: true,
          page: 1,
          users: [],
          hasMoreItems: true,
        ));
        final usersOption = await _userRepository.getUsers(page: state.page);

        usersOption.fold(
          (userFailure) {
            emit(state.copyWith(isLoading: false, failure: some(userFailure)));
          },
          (newUsers) {
            if (newUsers.isNotEmpty) {
              emit(state.copyWith(
                isLoading: false,
                users: [...state.users, ...newUsers],
                page: state.page + 1,
                hasMoreItems: true,
              ));
            } else {
              emit(state.copyWith(
                isLoading: false,
                hasMoreItems: false,
              ));
            }
          },
        );
        return;
      }
      emit(state.copyWith(
        filterText: event.filterText,
        isLoading: true,
      ));

      final usersOption =
          await _userRepository.getFilteredUsers(filterText: event.filterText);

      usersOption.fold(
        (userFailure) {
          emit(state.copyWith(isLoading: false, failure: some(userFailure)));
        },
        (users) {
          if (users.isNotEmpty) {
            emit(state.copyWith(
              isLoading: false,
              users: users,
            ));
          } else {
            emit(state.copyWith(
              isLoading: false,
            ));
          }
        },
      );
    });
  }
}
