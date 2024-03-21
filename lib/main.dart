import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/constant/global_general_constants.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/splash/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ru')],
      path: GlobalGeneralConstants
          .translationsPath, // <-- change the path of the translation files
      fallbackLocale: const Locale('en'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: bgColor,
          useMaterial3: true,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
              .apply(
                bodyColor: Colors.white,
              )
              .copyWith(
                bodyText1: const TextStyle(color: bodyTextColor),
                bodyText2: const TextStyle(color: bodyTextColor),
              ),
        ),
        home: const SplashView());
  }
}
