import 'package:beamer/beamer.dart';
import 'package:red_ops_task/presentation/routes/home/location.dart';

class HomeRouter {
  static routerDelegate() {
    return BeamerDelegate(
      initialPath: '/home/users',
      locationBuilder: BeamerLocationBuilder(
        beamLocations: [
          UsersLocation(),
          HomeLocation(),
        ],
      ),
    );
  }
}
