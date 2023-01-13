import 'package:beamer/beamer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/features.dart';

BeamerDelegate _mainRouterDelegate = BeamerDelegate(
  initialPath: '/tasks',
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '*': (context, state, data) => const WrapperView(),
    },
  ),
);

final mainRouterDelegateProvider = Provider<BeamerDelegate>((ref) {
  return _mainRouterDelegate;
});
