import 'package:flutter/material.dart';
import 'package:lesson34_practice/screens/epizodes_screen/epizodes_screen.dart';
import 'package:lesson34_practice/screens/personage_screen/personage_screen.dart';
import 'package:lesson34_practice/screens/ricky/first_screen/first_scaffold.dart';
import 'package:lesson34_practice/screens/setting_screen/setting_screen.dart';
import 'package:lesson34_practice/screens/signin_screen/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPassword(),
    );
  }
}

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      print(index);
      _selectedIndex = index;
    });
  }

  List<Widget> _bottomBarItems = const [
    FirstScreen(),
    Personages(),
    Epizodes(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomBarItems.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(
                'assets/images/two.png',
                color: Colors.blue,
              ),
            ),
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(
                'assets/images/two.png',
                color: Color(0xffBDBDBD),
              ),
            ),
            label: "Локации",
          ),
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(
                'assets/images/one.png',
                color: Colors.blue,
              ),
            ),
            icon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(
                'assets/images/one.png',
                color: Color(0xffBDBDBD),
              ),
            ),
            label: "Персонажи",
          ),
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(
                'assets/images/three.png',
                color: Colors.blue,
              ),
            ),
            icon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(
                'assets/images/three.png',
                color: Color(0xffBDBDBD),
              ),
            ),
            label: "Эпизоды",
          ),
          BottomNavigationBarItem(
            activeIcon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(
                'assets/images/four.png',
                color: Colors.blue,
              ),
            ),
            icon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(
                'assets/images/four.png',
                color: Color(0xffBDBDBD),
              ),
            ),
            label: "Настройки",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
        iconSize: 50,
        unselectedIconTheme: IconThemeData(
          color: Colors.green,
          opacity: 1.0,
          // size: 30,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          opacity: 1.0,
          size: 30,
        ),
      ),
    );
  }
}
