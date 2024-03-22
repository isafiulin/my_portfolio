import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AnimatedSubtitleText extends StatelessWidget {
  final double start;
  final double end;
  final String text;
  final bool gradient;
  const AnimatedSubtitleText({
    super.key,
    required this.start,
    required this.end,
    required this.text,
    this.gradient = false,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            shadows: gradient
                ? [
                    const Shadow(
                        color: Colors.pink,
                        offset: Offset(0, 2),
                        blurRadius: 10),
                    const Shadow(
                        color: Colors.pink,
                        offset: Offset(0, -2),
                        blurRadius: 10),
                  ]
                : [],
            height: 0,
          ),
    ).tr();
  }
}
