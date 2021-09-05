import 'package:flutter/material.dart';
import 'package:flutter_finanace_dashboard_design/config/menuController.dart';
import 'package:flutter_finanace_dashboard_design/screens/main/MainScreen.dart';
import 'package:flutter_finanace_dashboard_design/util/Constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Financial Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryBg,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        canvasColor: secondaryBg,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}
