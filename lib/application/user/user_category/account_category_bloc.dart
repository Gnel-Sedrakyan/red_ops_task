import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'account_category_state.dart';
part 'account_category_event.dart';
part 'account_category_bloc.freezed.dart';

@injectable
class AccountCategoryBloc
    extends Bloc<AccountCategoryEvent, AccountCategoryState> {
  AccountCategoryBloc(AccountCategoryState initialState) : super(initialState) {
    on<AccountCategoryEvent>((event, emit) async {
      emit(state.copyWith(
        selectedCategory: event.category,
      ));
    });
  }
}
