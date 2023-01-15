import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../core/core.dart';
import 'screen_type/screen_type.dart';

class TaskView extends StatelessWidget {
  final Task? task;
  const TaskView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => TaskMobileExtraLargeView(task: task),
        large: (context) => TaskMobileLargeView(task: task),
        normal: (context) => TaskMobileNormalView(task: task),
        small: (context) => TaskMobileSmallView(task: task),
      ),
      tablet: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => TaskTabletExtraLargeView(task: task),
        large: (context) => TaskTabletLargeView(task: task),
        normal: (context) => TaskTabletNormalView(task: task),
        small: (context) => TaskTabletSmallView(task: task),
      ),
      desktop: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => TaskDesktopExtraLargeView(task: task),
        large: (context) => TaskDesktopLargeView(task: task),
        normal: (context) => TaskDesktopNormalView(task: task),
        small: (context) => TaskDesktopSmallView(task: task),
      ),
    );
  }
}
