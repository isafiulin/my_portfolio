import 'package:flutter/material.dart';
import 'package:flutter_portfolio/generated/locale_keys.g.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: LocaleKeys.flutter),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: LocaleKeys.flutter),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: LocaleKeys.flutter),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: LocaleKeys.flutter),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
                desktop: AnimatedSubtitleText(
                    start: 30,
                    end: 40,
                    text: LocaleKeys.developer,
                    gradient: true),
                largeMobile: AnimatedSubtitleText(
                    start: 30,
                    end: 25,
                    text: LocaleKeys.developer,
                    gradient: true),
                mobile: AnimatedSubtitleText(
                    start: 25,
                    end: 20,
                    text: LocaleKeys.developer,
                    gradient: true),
                tablet: AnimatedSubtitleText(
                    start: 40,
                    end: 30,
                    text: LocaleKeys.developer,
                    gradient: true),
              )
            : ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(
                      start: 30,
                      end: 40,
                      text: LocaleKeys.developer,
                      gradient: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30,
                      end: 25,
                      text: LocaleKeys.developer,
                      gradient: false),
                  mobile: AnimatedSubtitleText(
                      start: 25,
                      end: 20,
                      text: LocaleKeys.developer,
                      gradient: true),
                  tablet: AnimatedSubtitleText(
                      start: 40,
                      end: 30,
                      text: LocaleKeys.developer,
                      gradient: false),
                ),
              ))
      ],
    );
  }
}
