import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/screen_type.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const ProjectsMobileExtraLargeView(),
        large: (context) => const ProjectsMobileLargeView(),
        normal: (context) => const ProjectsMobileNormalView(),
        small: (context) => const ProjectsMobileSmallView(),
      ),
      tablet: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const ProjectsTabletExtraLargeView(),
        large: (context) => const ProjectsTabletLargeView(),
        normal: (context) => const ProjectsTabletNormalView(),
        small: (context) => const ProjectsTabletSmallView(),
      ),
      desktop: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const ProjectsDesktopExtraLargeView(),
        large: (context) => const ProjectsDesktopLargeView(),
        normal: (context) => const ProjectsDesktopNormalView(),
        small: (context) => const ProjectsDesktopSmallView(),
      ),
    );
  }
}
