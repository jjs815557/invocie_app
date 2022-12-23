import 'package:flutter/material.dart';
import 'package:invoice_app/screens/home_screen.dart';
import 'package:invoice_app/screens/search_screen.dart';
import 'package:invoice_app/screens/setting_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentIndex = 0;
  List<Widget> body = [
    HomeScreen(),
    SearchScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.grey,
          onTap: (selecedIndex) => setState(() {
                _currentIndex = selecedIndex;
              }),
          items: [
            BottomNavigationBarItem(
              label: '홈',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: '검색',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: '설정',
              icon: Icon(Icons.settings),
            ),
          ]),
    );
  }
}
