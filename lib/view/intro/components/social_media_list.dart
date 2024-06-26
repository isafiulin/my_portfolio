import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/generated/locale_keys.g.dart';
import 'package:flutter_portfolio/view/intro/components/social_media_coloumn.dart';
import '../../../res/constants.dart';

class SocialMediaIconList extends StatelessWidget {
  const SocialMediaIconList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const Spacer(),
        RotatedBox(
          quarterTurns: -3,
          child: Text(
            LocaleKeys.followMe,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ).tr(),
        ),
        Container(
          height: size.height * 0.06,
          width: 3,
          margin: const EdgeInsets.symmetric(vertical: defaultPadding * 0.5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(defaultPadding)),
        ),
        const SocialMediaIconColumn(),
        const Spacer(),
      ],
    );
  }
}
