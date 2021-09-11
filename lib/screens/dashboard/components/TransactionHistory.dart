import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/config/responsive.dart';
import 'package:flutter_finanace_dashboard_design/models/Transaction.dart';
import 'package:flutter_finanace_dashboard_design/util/Constants.dart';
import 'package:flutter_finanace_dashboard_design/util/TextWidget.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

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
                      ? 25
                      : 20,
              fontWeight: FontWeight.w800,
              color: black,
              text: 'History'),
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
                      ? 16
                      : 14,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: 'Transaction of lat 6 month'),
        ],
      ),
      Container(
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: Color(0xfff5f5fd),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Responsive.isDesktop(context)
                    ? double.infinity
                    : MediaQuery.of(context).size.width,
                child: DataTable(
                  horizontalMargin: 0,
                  columnSpacing: defaultPadding,
                  columns: [
                    DataColumn(
                      label: TextWidget(
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: secondary,
                          text: 'Name'),
                    ),
                    DataColumn(
                      label: TextWidget(
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: secondary,
                          text: 'Particlars'),
                    ),
                    DataColumn(
                      label: TextWidget(
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: secondary,
                          text: 'Time'),
                    ),
                    DataColumn(
                      label: TextWidget(
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: secondary,
                          text: 'Amount'),
                    ),
                    DataColumn(
                      label: TextWidget(
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: secondary,
                          text: 'Status'),
                    ),
                  ],
                  rows: List.generate(
                    transactionHistory.length,
                    (index) => tranHistDataRow(transactionHistory[index]),
                  ),
                ),
              ),
            ],
          )),
    ]);
  }

  DataRow tranHistDataRow(Transaction tranInfo) {
    return DataRow(
      cells: [
        DataCell(
          CircleAvatar(
            radius: 17,
            backgroundImage: NetworkImage(tranInfo.avatar),
          ),
        ),
        DataCell(
          TextWidget(
              size: 16,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: tranInfo.label),
        ),
        DataCell(
          TextWidget(
              size: 16,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: tranInfo.time),
        ),
        DataCell(
          TextWidget(
              size: 16,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: tranInfo.amount),
        ),
        DataCell(
          TextWidget(
              size: 16,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: tranInfo.status),
        ),
      ],
    );
  }
}
