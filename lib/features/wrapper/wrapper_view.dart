import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/screen_type.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const WrapperMobileExtraLargeView(),
        large: (context) => const WrapperMobileLargeView(),
        normal: (context) => const WrapperMobileNormalView(),
        small: (context) => const WrapperMobileSmallView(),
      ),
      tablet: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const WrapperTabletExtraLargeView(),
        large: (context) => const WrapperTabletLargeView(),
        normal: (context) => const WrapperTabletNormalView(),
        small: (context) => const WrapperTabletSmallView(),
      ),
      desktop: (context) => RefinedLayoutBuilder(
        extraLarge: (context) => const WrapperDesktopExtraLargeView(),
        large: (context) => const WrapperDesktopLargeView(),
        normal: (context) => const WrapperDesktopNormalView(),
        small: (context) => const WrapperDesktopSmallView(),
      ),
    );
  }
}
