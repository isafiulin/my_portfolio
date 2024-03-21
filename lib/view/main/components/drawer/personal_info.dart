import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/constant/global_general_constants.dart';
import 'package:flutter_portfolio/generated/locale_keys.g.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const AreaInfoText(
            title: LocaleKeys.contact, text: GlobalGeneralConstants.phone),
        const AreaInfoText(
            title: LocaleKeys.email, text: GlobalGeneralConstants.mail),
        const AreaInfoText(
            title: LocaleKeys.linkedIn, text: GlobalGeneralConstants.linked),
        const AreaInfoText(
            title: LocaleKeys.github, text: GlobalGeneralConstants.git),
        const SizedBox(
          height: defaultPadding,
        ),
        const Text(
          LocaleKeys.skills,
          style: TextStyle(color: Colors.white),
        ).tr(),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
