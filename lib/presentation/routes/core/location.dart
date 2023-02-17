import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:red_ops_task/presentation/pages/home/home_page.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => ['/home/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        const BeamPage(
          key: ValueKey('home'),
          title: 'home',
          child: HomePage(),
        ),
      ];
}
