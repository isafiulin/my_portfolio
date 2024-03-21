import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/constant/global_general_constants.dart';
import 'package:flutter_portfolio/core/utils/common_utils.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
              onPressed: () async {
                await CommonUtil.launchSupport(
                    iosLink: GlobalGeneralConstants.linkedInLink,
                    link: GlobalGeneralConstants.linkedInLink,
                    context: context);
              },
              icon: SvgPicture.asset('assets/icons/linkedin.svg')),
          IconButton(
              onPressed: () async {
                await CommonUtil.launchSupport(
                    iosLink: GlobalGeneralConstants.gitHubLink,
                    link: GlobalGeneralConstants.gitHubLink,
                    context: context);
              },
              icon: SvgPicture.asset('assets/icons/github.svg')),
          const Spacer(),
        ],
      ),
    );
  }
}
