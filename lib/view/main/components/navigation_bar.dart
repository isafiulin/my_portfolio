import 'package:countries_flag/countries_flag.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),

          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(
            flex: 2,
          ),
          const ConnectButton(),
          const SizedBox(
            width: 16,
          ),
          InkWell(
            onTap: () {
              context.setLocale(const Locale('en'));
            },
            child: CountriesFlag(Flags.unitedStatesOfAmerica,
                width: 16,
                height: 16,
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          const SizedBox(
            width: 16,
          ),
          InkWell(
            onTap: () {
              context.setLocale(const Locale('ru'));
            },
            child: CountriesFlag(Flags.russia,
                width: 16,
                height: 16,
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
