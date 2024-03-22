import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(
      {super.key,
      required this.desktop,
      required this.largeMobile,
      required this.mobile,
      required this.tablet,
      this.extraLargeScreen});
  final Widget desktop;
  final Widget? largeMobile;
  final Widget mobile;
  final Widget? tablet;
  final Widget? extraLargeScreen;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 1400 && extraLargeScreen != null) {
      return SizedBox(width: size.width / 4, child: extraLargeScreen!);
    } else if (size.width >= 1080) {
      return SizedBox(
        width: size.width / 3,
        child: desktop,
      );
    } else if (size.width >= 700 && tablet != null) {
      final double value = Responsive.isDesktop(context) ? 3 : 1.3;
      return SizedBox(width: size.width / value, child: tablet!);
    } else if (size.width >= 500 && largeMobile != null) {
      return SizedBox(width: size.width / 1.3, child: largeMobile!);
    } else {
      return SizedBox(width: size.width / 1.3, child: mobile);
    }
  }
}
