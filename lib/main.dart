import 'package:flutter/material.dart';
import 'package:invoice_app/resource/color_manager.dart';
import 'package:invoice_app/screens/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.primary0,
        primarySwatch: Colors.blue,
      ),
      home: BottomBarScreen(),
    );
  }
}
