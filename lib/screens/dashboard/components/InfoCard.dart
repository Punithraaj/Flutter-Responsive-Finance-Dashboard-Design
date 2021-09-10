import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/config/responsive.dart';
import 'package:flutter_finanace_dashboard_design/models/DemoInfoCard.dart';
import 'package:flutter_finanace_dashboard_design/util/Constants.dart';
import 'package:flutter_finanace_dashboard_design/util/TextWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final DemoInfoCard info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  info.icon,
                  width: Responsive.isMobile(context) ? 25 : 30,
                ),
              ),
              Icon(Icons.more_vert, color: secondary)
            ],
          ),
          TextWidget(
            size: Responsive.isMobile(context) ? 12 : 14,
            fontWeight: FontWeight.w400,
            color: secondary,
            text: Responsive.isMobile(context)
                ? info.label.replaceAll('\n', '')
                : info.label,
          ),
          TextWidget(
            size: Responsive.isMobile(context) ? 12 : 16,
            fontWeight: FontWeight.bold,
            color: black,
            text: info.amount,
          ),
        ],
      ),
    );
  }
}
