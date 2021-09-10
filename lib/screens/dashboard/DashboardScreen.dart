import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/config/menuController.dart';
import 'package:flutter_finanace_dashboard_design/config/responsive.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/Header.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/components/MyInfoCard.dart';
import 'package:flutter_finanace_dashboard_design/util/Constants.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [Header(), SizedBox(height: defaultPadding), MyInfoCard()],
        ),
      ),
    );
  }
}
