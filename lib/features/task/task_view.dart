import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../core/core.dart';
import 'screen_type/screen_type.dart';

class TaskView extends ConsumerWidget {
  final Task? task;
  const TaskView({super.key, this.task});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Task? splitTask = task ?? ref.watch(taskStateProvider);
    return ScreenTypeLayout.builder(
      mobile: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => TaskMobileExtraLargeView(task: splitTask),
        large: (context) => TaskMobileLargeView(task: splitTask),
        normal: (context) => TaskMobileNormalView(task: splitTask),
        small: (context) => TaskMobileSmallView(task: splitTask),
      ),
      tablet: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => TaskTabletExtraLargeView(task: splitTask),
        large: (context) => TaskTabletLargeView(task: splitTask),
        normal: (context) => TaskTabletNormalView(task: splitTask),
        small: (context) => TaskTabletSmallView(task: splitTask),
      ),
      desktop: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => TaskDesktopExtraLargeView(task: splitTask),
        large: (context) => TaskDesktopLargeView(task: splitTask),
        normal: (context) => TaskDesktopNormalView(task: splitTask),
        small: (context) => TaskDesktopSmallView(task: splitTask),
      ),
    );
  }
}
