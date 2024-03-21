import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/constant/global_general_constants.dart';
import 'package:flutter_portfolio/core/utils/common_utils.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () {
              CommonUtil.launchSupport(
                  iosLink: GlobalGeneralConstants.linkedInLink,
                  link: GlobalGeneralConstants.linkedInLink,
                  context: context);
            }),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () {
            CommonUtil.launchSupport(
                iosLink: GlobalGeneralConstants.gitHubLink,
                link: GlobalGeneralConstants.gitHubLink,
                context: context);
          },
        ),
      ],
    );
  }
}
