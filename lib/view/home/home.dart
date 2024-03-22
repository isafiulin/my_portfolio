import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/introduction.dart';
import 'package:flutter_portfolio/view/main/components/drawer/drawer.dart';
import 'package:flutter_portfolio/view/main/main_view.dart';
import 'package:flutter_portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> listWidget = [];
    if (Responsive.isLargeMobile(context) || Responsive.isMobile(context)) {
      listWidget = [
        const Introduction(),
        const CustomDrawer(),
        ProjectsView(),
      ];
    } else {
      listWidget = [
        const Introduction(),
        ProjectsView(),
      ];
    }
    return MainView(pages: listWidget);
  }
}
