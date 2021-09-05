import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/config/menuController.dart';
import 'package:flutter_finanace_dashboard_design/config/responsive.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/DashboardScreen.dart';
import 'package:flutter_finanace_dashboard_design/screens/main/SideMenu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: Responsive.isDesktop(context) ? null : SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                flex: 1,
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
