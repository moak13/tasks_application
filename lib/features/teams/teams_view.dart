import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/screen_type.dart';

class TeamsView extends StatelessWidget {
  const TeamsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const TeamsMobileExtraLargeView(),
        large: (context) => const TeamsMobileLargeView(),
        normal: (context) => const TeamsMobileNormalView(),
        small: (context) => const TeamsMobileSmallView(),
      ),
      tablet: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const TeamsTabletExtraLargeView(),
        large: (context) => const TeamsTabletLargeView(),
        normal: (context) => const TeamsTabletNormalView(),
        small: (context) => const TeamsTabletSmallView(),
      ),
      desktop: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const TeamsDesktopExtraLargeView(),
        large: (context) => const TeamsDesktopLargeView(),
        normal: (context) => const TeamsDesktopNormalView(),
        small: (context) => const TeamsDesktopSmallView(),
      ),
    );
  }
}
