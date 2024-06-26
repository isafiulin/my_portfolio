import 'package:flutter/material.dart';
import 'package:flutter_portfolio/generated/locale_keys.g.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationTextButton(
            onTap: () {
              controller.animateToPage(0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            },
            text: LocaleKeys.home),
        if (Responsive.isLargeMobile(context) || Responsive.isMobile(context))
          NavigationTextButton(
              onTap: () {
                controller.animateToPage(1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              text: LocaleKeys.aboutMe),
        NavigationTextButton(
            onTap: () {
              controller.animateToPage(Responsive.isMobile(context) ? 2 : 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            },
            text: LocaleKeys.projects),
        // NavigationTextButton(onTap: () {controller.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Certifications'),
        // NavigationTextButton(onTap: () {}, text: 'Achievements'),
      ],
    );
  }
}
