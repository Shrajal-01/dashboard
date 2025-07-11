import 'package:flutter/material.dart';

class ScreenHelper {
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1024;
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
}
