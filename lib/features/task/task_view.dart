import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/screen_type.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const TaskMobileExtraLargeView(),
        large: (context) => const TaskMobileLargeView(),
        normal: (context) => const TaskMobileNormalView(),
        small: (context) => const TaskMobileSmallView(),
      ),
      tablet: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const TaskTabletExtraLargeView(),
        large: (context) => const TaskTabletLargeView(),
        normal: (context) => const TaskTabletNormalView(),
        small: (context) => const TaskTabletSmallView(),
      ),
      desktop: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const TaskDesktopExtraLargeView(),
        large: (context) => const TaskDesktopLargeView(),
        normal: (context) => const TaskDesktopNormalView(),
        small: (context) => const TaskDesktopSmallView(),
      ),
    );
  }
}
