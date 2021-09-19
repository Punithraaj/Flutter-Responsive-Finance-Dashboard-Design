import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/config/responsive.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/BalanceDetails.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/Header.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/components/MyInfoCard.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/components/TransactionHistory.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/components/paymentDetailList.dart';
import 'package:flutter_finanace_dashboard_design/util/Constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 10,
                    child: Column(
                      children: [
                        MyInfoCard(),
                        SizedBox(height: defaultPadding),
                        BalanceDetails(),
                        SizedBox(height: defaultPadding),
                        TransactionHistory(),
                        if (!Responsive.isDesktop(context)) PaymentDetailList()
                      ],
                    )),
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [PaymentDetailList()],
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
