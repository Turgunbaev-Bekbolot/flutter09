import 'package:flutter/material.dart';
import 'package:lesson34_practice/screens/ricky/third_screen/epizod.dart';
import 'package:lesson34_practice/screens/ricky/third_screen/information.dart';
import 'package:lesson34_practice/screens/ricky/third_screen/profile.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ProfileInfo(),
          Info(
            text: 'Пол',
            text2: 'Мужской',
            isBool: true,
            cont: SizedBox(),
          ),
          Info(
            text: 'Место рождения',
            text2: 'Земля С-137',
            cont: SizedBox(
              width: 90,
            ),
            isBool: false,
          ),
          Info(
            text: 'Местоположение',
            text2: 'Земля (Измерение подменны)',
            cont: SizedBox(),
            isBool: false,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 2,
              color: Color(0xffF2F2F2),
            ),
          ),
          Epithodes(
            text: 'Серия 1',
            text2: 'Пилот',
            text3: '2 декабря 2013',
            image: 'rectangle1',
          ),
          Epithodes(
            text: 'Серия 2',
            text2: 'Пёс-газонокосильщик',
            text3: '9 декабря 2013',
            image: 'rectangle2',
          ),
          Epithodes(
            text: 'Серия 3',
            text2: 'Анатомический парк',
            text3: '16 декабря 2013',
            image: 'rectangle3',
          ),
        ],
      ),
    );
  }
}
