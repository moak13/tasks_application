import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/screen_type.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const TasksMobileExtraLargeView(),
        large: (context) => const TasksMobileLargeView(),
        normal: (context) => const TasksMobileNormalView(),
        small: (context) => const TasksMobileSmallView(),
      ),
      tablet: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const TasksTabletExtraLargeView(),
        large: (context) => const TasksTabletLargeView(),
        normal: (context) => const TasksTabletNormalView(),
        small: (context) => const TasksTabletSmallView(),
      ),
      desktop: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const TasksDesktopExtraLargeView(),
        large: (context) => const TasksDesktopLargeView(),
        normal: (context) => const TasksDesktopNormalView(),
        small: (context) => const TasksDesktopSmallView(),
      ),
    );
  }
}
