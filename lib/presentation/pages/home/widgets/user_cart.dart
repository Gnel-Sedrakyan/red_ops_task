import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:red_ops_task/domain/user/user.dart';
import 'package:red_ops_task/presentation/core/assets/asset_manager.dart';

class UserCart extends StatelessWidget {
  const UserCart({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: InkWell(
        onTap: () {
          Beamer.of(context).beamToNamed("/home/users/${user.id.getOrCrash()}");
        },
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Hero(
                      tag: "image-${user.id.getOrCrash()}",
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(34.0),
                        child: user.image.isSome()
                            ? Image(
                                height: 34,
                                width: 34,
                                image: NetworkImage(user.image.fold(
                                    () => "", (name) => name.getOrCrash())))
                            : Image.asset(
                                Assets.profileLoadingImage,
                                height: 34,
                                width: 34,
                              ),
                      ),
                    ),
                    const SizedBox(width: 21),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (user.name.isSome())
                          Text(
                            user.name
                                .fold(() => "", (name) => name.getOrCrash()),
                          ),
                        if (user.lastName.isSome())
                          Text(
                            user.lastName
                                .fold(() => "", (name) => name.getOrCrash()),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerLeft,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(user.email),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (user.activationDate.isSome()) ...[
                      Text(
                        user.activationDate
                            .fold(() => "", (name) => name.getOrCrash()),
                      ),
                    ] else
                      const Text("None"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (user.status.isSome()) ...[
                      Text(
                        user.status.fold(() => "", (name) => name.getOrCrash()),
                      ),
                    ] else
                      const Text("None"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (user.id.isValid())
                      Text(
                        overflow: TextOverflow.ellipsis,
                        user.id.getOrCrash(),
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                height: double.infinity,
                child: PopupMenuButton(
                  child: const Center(
                    child: Icon(Icons.more_vert),
                  ),
                  itemBuilder: (context) {
                    return List.generate(5, (index) {
                      return PopupMenuItem(
                        child: Text('button no $index'),
                      );
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
