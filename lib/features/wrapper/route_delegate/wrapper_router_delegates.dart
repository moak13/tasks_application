import 'package:beamer/beamer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../locations/locations.dart';

List<BeamerDelegate> _wrapperRouterDelegates = [
  BeamerDelegate(
    initialPath: '/tasks',
    locationBuilder: (routeInformation, _) {
      if (routeInformation.location!.contains('tasks')) {
        return TasksLocation(routeInformation);
      }
      return NotFound(path: routeInformation.location!);
    },
  ),
  BeamerDelegate(
    initialPath: '/projects',
    locationBuilder: (routeInformation, _) {
      if (routeInformation.location!.contains('projects')) {
        return ProjectsLocation(routeInformation);
      }
      return NotFound(path: routeInformation.location!);
    },
  ),
  BeamerDelegate(
    initialPath: '/teams',
    locationBuilder: (routeInformation, _) {
      if (routeInformation.location!.contains('teams')) {
        return TeamsLocation(routeInformation);
      }
      return NotFound(path: routeInformation.location!);
    },
  ),
];

final wrapperRouterDelegatesProvider = Provider<List<BeamerDelegate>>((ref) {
  return _wrapperRouterDelegates;
});
