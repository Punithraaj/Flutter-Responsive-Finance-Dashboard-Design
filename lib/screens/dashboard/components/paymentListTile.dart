import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/util/Constants.dart';
import 'package:flutter_finanace_dashboard_design/util/TextWidget.dart';
import 'package:flutter_svg/svg.dart';

class PaymentListTile extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const PaymentListTile(
      {required this.icon, required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.standard,
      leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SvgPicture.asset(
            icon,
            width: 20,
          )),
      title: TextWidget(
          size: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          text: label),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
              size: 12,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: 'Successfully'),
          TextWidget(
              size: 12,
              fontWeight: FontWeight.w600,
              color: black,
              text: amount),
        ],
      ),
      onTap: () {},
      selected: true,
    );
  }
}
