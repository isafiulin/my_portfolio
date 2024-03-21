import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/generated/locale_keys.g.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Row(
          children: [
            Text(
              '${context.tr(LocaleKeys.meFirst)}${Responsive.isLargeMobile(context) ? '\n' : ''}${LocaleKeys.meSecond.tr()} ${!Responsive.isLargeMobile(context) ? '\n' : ''}${LocaleKeys.meThird.tr()}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey, wordSpacing: 2, fontSize: value),
            ),
          ],
        );
      },
    );
  }
}
