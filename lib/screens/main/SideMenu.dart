import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/util/Constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class SideMenu extends StatelessWidget {
//   const SideMenu({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       elevation: 0,
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.1,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(color: secondaryBg),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 100,
//                 alignment: Alignment.topCenter,
//                 width: double.infinity,
//                 padding: EdgeInsets.only(top: 20),
//                 child: SizedBox(
//                   width: 35,
//                   height: 20,
//                   child: SvgPicture.asset('assets/images/mac-action.svg'),
//                 ),
//               ),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/home.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/pie-chart.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/clipboard.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/credit-card.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/trophy.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/invoice.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//  IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/home.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/pie-chart.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/clipboard.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/credit-card.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/trophy.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   iconSize: 20,
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   icon: SvgPicture.asset(
//                     'assets/images/invoice.svg',
//                     color: iconGray,
//                   ),
//                   onPressed: () {}),

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(
              "assets/images/finance_logo.png",
            ),
          ),
          DrawerListTile(
            title: "Dashbord",
            svgSrc: 'assets/images/home.svg',
            press: () {},
          ),
          DrawerListTile(
            title: "Balance",
            svgSrc: "assets/images/pie-chart.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Payments",
            svgSrc: "assets/images/clipboard.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Credit Card",
            svgSrc: "assets/images/credit-card.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Rewards",
            svgSrc: "assets/images/trophy.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "History",
            svgSrc: "assets/images/invoice.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: iconGray,
        height: 20,
      ),
      title: Text(
        title,
        style: TextStyle(color: iconGray),
      ),
    );
  }
}
