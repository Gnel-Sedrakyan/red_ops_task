import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:red_ops_task/application/user/user_list/user_list_bloc.dart';
import 'package:red_ops_task/presentation/core/themes/app_theme.dart';
import 'package:red_ops_task/presentation/routes/core/router.dart';

import '../../injection.dart';

final GlobalKey mainBeamerKey = GlobalKey();

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<UserListBloc>()),
      ],
      // child: MultiBlocListener(
      //   listeners: [
      //     //!! DO NOT REMOVE (use for calling events on creation)
      //   ],
      child: BeamerProvider(
        key: mainBeamerKey,
        routerDelegate: CoreRouter.routerDelegate,
        child: MaterialApp.router(
          theme: AppTheme.buildLightTheme(),
          darkTheme: AppTheme.buildDarkTheme(),
          title: 'Notes',
          debugShowCheckedModeBanner: false,
          routerDelegate: CoreRouter.routerDelegate,
          routeInformationParser: BeamerParser(),
          backButtonDispatcher:
              BeamerBackButtonDispatcher(delegate: CoreRouter.routerDelegate),
        ),
      ),
      // ),
    );
  }
}
