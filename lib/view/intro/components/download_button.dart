import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/constant/global_general_constants.dart';
import 'package:flutter_portfolio/core/utils/common_utils.dart';
import 'package:flutter_portfolio/generated/locale_keys.g.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        String link = GlobalGeneralConstants.enCV;
        if (context.locale.languageCode == "ru") {
          link = GlobalGeneralConstants.ruCV;
        }
        await CommonUtil.launchSupport(
            context: context, iosLink: link, link: link);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.blue, offset: Offset(0, -1), blurRadius: 5),
            BoxShadow(color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.pink,
                Colors.blue.shade900,
              ]),
        ),
        child: Row(
          children: [
            Text(
              LocaleKeys.downloadCV,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ).tr(),
            const SizedBox(
              width: defaultPadding / 3,
            ),
            const Icon(
              FontAwesomeIcons.download,
              color: Colors.white70,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
