import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';
import 'package:proton_search/responsive/mobile_screen_layout.dart';
import 'package:proton_search/responsive/responsive_layout_screen.dart';
import 'package:proton_search/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proton Search',
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
