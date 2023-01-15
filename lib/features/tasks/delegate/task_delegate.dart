import 'package:beamer/beamer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../location/location.dart';

BeamerDelegate _taskBeamerDelegate(Ref ref) {
  return BeamerDelegate(
    initialPath: '/tasks/:taskId',
    locationBuilder: (routeInformation, _) {
      if (routeInformation.location!.contains('task')) {
        return TaskLocation(routeInformation);
      }
      return NotFound(path: routeInformation.location!);
    },
  );
}

final taskRouterDelegatesProvider = Provider<BeamerDelegate>((ref) {
  return _taskBeamerDelegate(ref);
});
