import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:red_ops_task/application/user/user_detail/user_detail_bloc.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/injection.dart';
import 'package:red_ops_task/presentation/core/assets/asset_manager.dart';
import 'package:red_ops_task/presentation/core/constants/colors.dart';
import 'package:red_ops_task/presentation/core/constants/defalut_values.dart';
import 'package:red_ops_task/presentation/core/constants/styles.dart';

class DetailScreen extends StatelessWidget {
  static const location = "/home/";
  static const name = "main";

  const DetailScreen({Key? key, required this.userId}) : super(key: key);
  final UniqueId userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          getIt<UserDetailBloc>()..add(UserDetailEvent.getUserById(userId)),
      child: BlocBuilder<UserDetailBloc, UserDetailState>(
        builder: (BuildContext context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                border: const Border(
                  bottom: BorderSide(
                    color: borderColor,
                    width: 1.0,
                  ),
                ),
                boxShadow: const [defaultshadow],
              ),
              width: double.infinity,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Hero(
                        tag: "image-${userId.getOrCrash()}",
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(34.0),
                            child: state.maybeWhen(
                                loaded: (user) => user.image.isSome()
                                    ? Image(
                                        height: 34,
                                        width: 34,
                                        image: NetworkImage(user.image.fold(
                                            () => "",
                                            (name) => name.getOrCrash())))
                                    : Image.asset(
                                        Assets.profileLoadingImage,
                                        height: 34,
                                        width: 34,
                                      ),
                                orElse: () {
                                  return Image.asset(
                                    Assets.profileLoadingImage,
                                    height: 34,
                                    width: 34,
                                  );
                                }),
                          ),
                        ),
                      ),
                      Text(state.maybeWhen(
                          loaded: (user) =>
                              "${user.name.fold(() => "", (name) => name.getOrCrash())} ${user.lastName.fold(() => "", (name) => name.getOrCrash())}",
                          orElse: () => "")),
                      Expanded(child: Container()),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(state.maybeWhen(
                              loaded: (user) =>
                                  "Email: ${user.name.fold(() => "Note Specified", (name) => name.getOrCrash())}",
                              orElse: () => "")),
                          Text(state.maybeWhen(
                              loaded: (user) =>
                                  "Mobile: ${user.phoneNumber.fold(() => "Note Specified", (name) => name.getOrCrash())}",
                              orElse: () => "")),
                          Text(state.maybeWhen(
                              loaded: (user) =>
                                  "City: ${user.city.fold(() => "Note Specified", (name) => name.getOrCrash())}",
                              orElse: () => "")),
                          Text(state.maybeWhen(
                              loaded: (user) =>
                                  "State: ${user.state.fold(() => "Note Specified", (name) => name.getOrCrash())}",
                              orElse: () => "")),
                        ],
                      )
                    ]),
              ),
            ),
            const Expanded(
              child: Center(
                  child: Text(
                      "No PUBLIC achivements, contact to user to know about his achivements")),
            ),
          ],
        ),
      ),
    );
  }
}
