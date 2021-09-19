import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/models/RecentActivity.dart';
import 'package:flutter_finanace_dashboard_design/models/UpcomingPayments.dart';
import 'package:flutter_finanace_dashboard_design/screens/dashboard/components/paymentListTile.dart';
import 'package:flutter_finanace_dashboard_design/util/Constants.dart';
import 'package:flutter_finanace_dashboard_design/util/TextWidget.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: defaultPadding,
          ),
          TextWidget(
              size: 18,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              text: 'Debit/Credit Card'),
          SizedBox(
            height: defaultPadding,
          ),
          Image.asset('assets/images/card.png'),
          SizedBox(
            height: defaultPadding,
          ),
          TextWidget(
              size: 18,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              text: 'Recent Activities'),
          SizedBox(
            height: defaultPadding,
          ),
          TextWidget(
              size: 14,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: '02 Mar 2021'),
          SizedBox(
            height: defaultPadding,
          ),
          Column(
            children: List.generate(
              recentActivities.length,
              (index) => PaymentListTile(
                  icon: recentActivities[index].icon,
                  label: recentActivities[index].label,
                  amount: recentActivities[index].amount),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          TextWidget(
              size: 18,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              text: 'Upcoming Payments'),
          SizedBox(
            height: defaultPadding,
          ),
          TextWidget(
              size: 14,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: '02 Mar 2021'),
          Column(
            children: List.generate(
              upcomingPayments.length,
              (index) => PaymentListTile(
                  icon: upcomingPayments[index].icon,
                  label: upcomingPayments[index].label,
                  amount: upcomingPayments[index].amount),
            ),
          ),
        ],
      ),
    );
  }
}
