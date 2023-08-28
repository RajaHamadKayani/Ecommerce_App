import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  Responsive({
    super.key,
    this.tablet,
    required this.desktop,
    required this.mobile,
  });
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 850 &&
      MediaQuery.of(context).size.height <= 1000;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width <= 1280 &&
      MediaQuery.of(context).size.height <= 2000;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1280 &&
      MediaQuery.of(context).size.height >= 740 &&
      MediaQuery.of(context).size.height <= 970;
  static bool smallMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 370 &&
      MediaQuery.of(context).size.width >= 100;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomeScreenSizes {
  static double titleContainerHeight(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 32;
    } else if (Responsive.isTablet(context)) {
      return 30;
    } else if (Responsive.isMobile(context)) {
      return 26;
    } else if (Responsive.smallMobile(context)) {
      return 26;
    } else {
      return 26;
    }
  }

  static double titleContainerWidth(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 500;
    } else if (Responsive.isTablet(context)) {
      return 450;
    } else if (Responsive.isMobile(context)) {
      return 350;
    } else if (Responsive.smallMobile(context)) {
      return 312;
    } else {
      return 200;
    }
  }

  static double menuIconSize(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 30;
    } else if (Responsive.isTablet(context)) {
      return 26;
    } else if (Responsive.isMobile(context)) {
      return 18;
    } else if (Responsive.smallMobile(context)) {
      return 18;
    } else {
      return 14;
    }
  }

  static double textContinerHeight(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 25;
    } else if (Responsive.isTablet(context)) {
      return 20;
    } else if (Responsive.isMobile(context)) {
      return 15;
    } else if (Responsive.smallMobile(context)) {
      return 13;
    } else {
      return 10;
    }
  }

  static double textContainerWidth(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 160;
    } else if (Responsive.isTablet(context)) {
      return 120;
    } else if (Responsive.isMobile(context)) {
      return 100;
    } else if (Responsive.smallMobile(context)) {
      return 91;
    } else {
      return 50;
    }
  }

  static double notificationIconSize(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 50;
    } else if (Responsive.isTablet(context)) {
      return 35;
    } else if (Responsive.isMobile(context)) {
      return 30;
    } else if (Responsive.smallMobile(context)) {
      return 26;
    } else {
      return 15;
    }
  }

  static double listViewBuildericonContainerHeight(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 60;
    } else if (Responsive.isTablet(context)) {
      return 45;
    } else if (Responsive.isMobile(context)) {
      return 38;
    } else if (Responsive.smallMobile(context)) {
      return 36;
    } else {
      return 15;
    }
  }

  static double listViewBuildericonContainerWidth(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 64;
    } else if (Responsive.isTablet(context)) {
      return 48;
    } else if (Responsive.isMobile(context)) {
      return 40;
    } else if (Responsive.smallMobile(context)) {
      return 38;
    } else {
      return 18;
    }
  }

  static double listViewBuilderTextContainerHeight(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 16;
    } else if (Responsive.isTablet(context)) {
      return 14;
    } else if (Responsive.isMobile(context)) {
      return 12;
    } else if (Responsive.smallMobile(context)) {
      return 12;
    } else {
      return 10;
    }
  }

  static double listViewBuilderTextContainerWidth(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 100;
    } else if (Responsive.isTablet(context)) {
      return 70;
    } else if (Responsive.isMobile(context)) {
      return 50;
    } else if (Responsive.smallMobile(context)) {
      return 35;
    } else {
      return 30;
    }
  }

  static double listViewBuilderTextFontSize(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 32;
    } else if (Responsive.isTablet(context)) {
      return 25;
    } else if (Responsive.isMobile(context)) {
      return 12;
    } else if (Responsive.smallMobile(context)) {
      return 12;
    } else {
      return 9;
    }
  }

  static double stackContaierHeight(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 190;
    } else if (Responsive.isTablet(context)) {
      return 200;
    } else if (Responsive.isMobile(context)) {
      return 168;
    } else if (Responsive.smallMobile(context)) {
      return 168;
    } else {
      return 150;
    }
  }

  static double stackContaierWidth(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 500;
    } else if (Responsive.isTablet(context)) {
      return 450;
    } else if (Responsive.isMobile(context)) {
      return 312;
    } else if (Responsive.smallMobile(context)) {
      return 250;
    } else {
      return 150;
    }
  }

  static double rowidth(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 500;
    } else if (Responsive.isTablet(context)) {
      return 450;
    } else if (Responsive.isMobile(context)) {
      return 312;
    } else if (Responsive.smallMobile(context)) {
      return 250;
    } else {
      return 150;
    }
  }

  static double rowHeight(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 35;
    } else if (Responsive.isTablet(context)) {
      return 30;
    } else if (Responsive.isMobile(context)) {
      return 26;
    } else if (Responsive.smallMobile(context)) {
      return 26;
    } else {
      return 22;
    }
  }

  static double gridViewHeight(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 250;
    } else if (Responsive.isTablet(context)) {
      return 270;
    } else if (Responsive.isMobile(context)) {
      return 240;
    } else if (Responsive.smallMobile(context)) {
      return 230;
    } else {
      return 200;
    }
  }

  static double gridViewWidtht(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 350;
    } else if (Responsive.isTablet(context)) {
      return 260;
    } else if (Responsive.isMobile(context)) {
      return 126;
    } else if (Responsive.smallMobile(context)) {
      return 100;
    } else {
      return 80;
    }
  }

  static double gridViewImageContainerHeight(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 182;
    } else if (Responsive.isTablet(context)) {
      return 195;
    } else if (Responsive.isMobile(context)) {
      return 172;
    } else if (Responsive.smallMobile(context)) {
      return 172;
    } else {
      return 150;
    }
  }

  static double gridViewTextFontSize(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 18;
    } else if (Responsive.isTablet(context)) {
      return 16;
    } else if (Responsive.isMobile(context)) {
      return 12;
    } else if (Responsive.smallMobile(context)) {
      return 9;
    } else {
      return 6;
    }
  }

  static double gridViewPriceFontSize(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 22;
    } else if (Responsive.isTablet(context)) {
      return 19;
    } else if (Responsive.isMobile(context)) {
      return 16;
    } else if (Responsive.smallMobile(context)) {
      return 12;
    } else {
      return 9;
    }
  }
    static double recommendedGridContainerHeight(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 75;
    } else if (Responsive.isTablet(context)) {
      return 72;
    } else if (Responsive.isMobile(context)) {
      return 70;
    } else if (Responsive.smallMobile(context)) {
      return 70;
    } else {
      return 50;
    }
  }
  static double recommendedGridContainerWidth(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return 450;
    } else if (Responsive.isTablet(context)) {
      return 350;
    } else if (Responsive.isMobile(context)) {
      return 210;
    } else if (Responsive.smallMobile(context)) {
      return 150;
    } else {
      return 100;
    }
  }
}
