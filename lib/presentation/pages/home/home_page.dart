import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:red_ops_task/presentation/core/assets/asset_manager.dart';
import 'package:red_ops_task/presentation/core/constants/colors.dart';
import 'package:red_ops_task/presentation/core/widgets/app_appbar.dart';
import 'package:red_ops_task/presentation/core/widgets/asset_icon.dart';
import 'package:red_ops_task/presentation/routes/home/router.dart';

final homeBeamerKey = GlobalKey<BeamerState>();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppbar(),
      body: Scaffold(
        body: Row(
          children: [
            if (MediaQuery.of(context).size.width >= 640)
              NavigationRail(
                minExtendedWidth: 100,
                backgroundColor: secondaryColorLightTheme,
                onDestinationSelected: (int index) {
                  switch (index) {
                    case 0:
                      Beamer.of(context).beamToNamed("/home/users");
                      break;
                    case 1:
                      Beamer.of(context).beamToNamed("/home/profile");
                      break;
                    case 2:
                      Beamer.of(context).beamToNamed("/home/logout");
                      break;
                  }
                },
                selectedIndex: 1,
                destinations: const [
                  NavigationRailDestination(
                    padding: EdgeInsets.only(top: 0, bottom: 0),
                    icon: AssetIcon(icon: AssetIcons.cubes),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    padding: EdgeInsets.only(top: 0, bottom: 0),
                    icon: AssetIcon(icon: AssetIcons.addUser),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    padding: EdgeInsets.only(top: 0, bottom: 0),
                    icon: AssetIcon(icon: AssetIcons.logOut),
                    label: Text(''),
                  ),
                ],
                labelType: NavigationRailLabelType.none,
                // Called when one tab is selected
              ),
            Expanded(
              child: HeroControllerScope(
                controller: MaterialApp.createMaterialHeroController(),
                child: Beamer(
                  key: homeBeamerKey,
                  routerDelegate: HomeRouter.routerDelegate(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
