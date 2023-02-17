import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/presentation/pages/home/detail_screen.dart';
import 'package:red_ops_task/presentation/pages/home/main_screen.dart';
import 'package:red_ops_task/presentation/pages/home/not_implemented_screen.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => [
        '/home/profile',
        '/home/logout',
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        const BeamPage(
          key: ValueKey('main'),
          title: 'main',
          child: NotImplementedScreen(),
        ),
      ];
}

class UsersLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => [
        '/home/users',
        '/home/users/:userId',
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    var pages = [
      const BeamPage(
        key: ValueKey('users'),
        title: 'users',
        child: MainScreen(),
      ),
    ];
    final String? userIdParameter = state.pathParameters['userId'];
    if (userIdParameter != null) {
      final userId = UniqueId.fromUniqueString(userIdParameter);
      pages.add(
        BeamPage(
          key: ValueKey('user-$userIdParameter'),
          title: 'User #$userIdParameter',
          child: DetailScreen(userId: userId),
        ),
      );
    }
    return pages;
  }
}
