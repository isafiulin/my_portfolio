import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_portfolio/core/constant/global_general_constants.dart';
import 'package:flutter_portfolio/core/utils/common_utils.dart';
import 'package:flutter_portfolio/generated/locale_keys.g.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../../../res/constants.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: () {
          CommonUtil.launchSupport(
              iosLink: GlobalGeneralConstants.tgLink,
              link: GlobalGeneralConstants.tgLink,
              errorMessage: tr(LocaleKeys.baseError),
              context: context);
        },
        borderRadius: BorderRadius.circular(defaultPadding + 10),
        child: Container(
          height: 60,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding),
              gradient: LinearGradient(colors: [
                Colors.pink,
                Colors.blue.shade900,
              ]),
              boxShadow: const [
                BoxShadow(
                    color: Colors.blue,
                    offset: Offset(0, -1),
                    blurRadius: defaultPadding / 4),
                BoxShadow(
                    color: Colors.red,
                    offset: Offset(0, 1),
                    blurRadius: defaultPadding / 4),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.telegram,
                color: Colors.blue[200],
                size: 15,
              ),
              const SizedBox(width: defaultPadding / 4),
              Text(
                LocaleKeys.telegram,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Colors.white,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold),
              ).tr(),
            ],
          ),
        ),
      ),
    );
  }
}
