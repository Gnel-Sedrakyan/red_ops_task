import 'package:red_ops_task/presentation/routes/core/guard.dart';
import 'package:red_ops_task/presentation/routes/core/location.dart';
import 'package:beamer/beamer.dart';

class CoreRouter {
  static final routerDelegate = BeamerDelegate(
    initialPath: '/home',
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeLocation(),
      ],
    ),
    guards: guards,
  );
}
