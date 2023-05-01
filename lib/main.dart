import 'package:debasmita_assignment/utils/portfolio_responsive.dart';
import 'package:debasmita_assignment/view/responsive_screens/desktop_screen.dart';
import 'package:debasmita_assignment/view/responsive_screens/mobile_screen.dart';
import 'package:debasmita_assignment/view/responsive_screens/tablet_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        backgroundColor: Colors.black,
      ),
      home: const Responsive(
        mobile: MobileScreen(),
        tablet: TabletScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
