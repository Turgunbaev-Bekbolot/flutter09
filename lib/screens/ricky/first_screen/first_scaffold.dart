import 'package:flutter/material.dart';
import 'package:lesson34_practice/screens/ricky/first_screen/bottom_container.dart';
import 'package:lesson34_practice/screens/ricky/first_screen/custom_button.dart';
import 'package:lesson34_practice/screens/ricky/first_screen/search_container.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, top: 54, right: 16),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchContainer(hintText: 'Найти локацию'),
            SizedBox(
              width: 410,
              height: 520,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  CustomButton(
                    isText: true,
                    text: 'Земля',
                    image: 'zemlya',
                  ),
                  CustomButton(
                    isText: false,
                    text: 'Анатомический парк',
                    image: 'city',
                  ),
                  CustomButton(
                    isText: false,
                    text: 'Земля',
                    image: 'zemlya',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
