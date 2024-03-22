import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/generated/locale_keys.g.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return Text(
      context.tr(LocaleKeys.aboutMeText),
      maxLines: 8,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Colors.grey,
        wordSpacing: 2,
      ),
    );
  }
}
