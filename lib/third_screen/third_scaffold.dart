import 'package:flutter/material.dart';
import 'package:lesson34_practice/second_screen/second_scaffold.dart';
import 'package:lesson34_practice/third_screen/body.dart';
import 'package:lesson34_practice/third_screen/epizod.dart';
import 'package:lesson34_practice/third_screen/information.dart';
import 'package:lesson34_practice/third_screen/profile.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
