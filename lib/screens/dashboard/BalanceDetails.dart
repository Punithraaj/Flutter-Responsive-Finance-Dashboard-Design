import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/config/responsive.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/components/barChart.dart';
import 'package:flutter_finanace_dashboard_design/util/Constants.dart';
import 'package:flutter_finanace_dashboard_design/util/TextWidget.dart';

class BalanceDetails extends StatelessWidget {
  const BalanceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
              size:
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? 16
                      : 14,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: 'Balance'),
          TextWidget(
              size:
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? 16
                      : 14,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: 'Past 30 DAYS'),
        ],
      ),
      SizedBox(height: defaultPadding),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
              size:
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? 25
                      : 20,
              fontWeight: FontWeight.w800,
              color: black,
              text: '\$1500'),
        ],
      ),
      SizedBox(height: defaultPadding),
      Container(
        height: 180,
        child: BarChartCopmponent(),
      ),
    ]);
  }
}
