import 'package:flutter/material.dart';
import 'package:lesson34_practice/screens/personage_screen/personage.dart';
import 'package:lesson34_practice/screens/ricky/first_screen/search_container.dart';

class Personages extends StatelessWidget {
  const Personages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, top: 54, right: 16),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SearchContainer(
              hintText: 'Найти персонажа',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ВСЕГО ПЕРСОНАЖЕЙ: 200',
                    style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/photos/kubs.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 410,
              height: 430,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Personage(
                        text: 'Рик Санчез',
                        text2: 'Человек, Мужской',
                        image: 'odin',
                      ),
                      Personage(
                        text: 'Директор Агенства',
                        text2: 'Человек, Мужской',
                        image: 'dva',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Personage(
                          text: 'Морти Смит',
                          text2: 'Человек, Мужской',
                          image: 'tri',
                        ),
                        Personage(
                          text: 'Саммер Смит',
                          text2: 'Человек, Женский',
                          image: 'chetyre',
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Personage(
                        text: 'Альберт Эйнштейн',
                        text2: 'Человек, Мужской',
                        image: 'pyat',
                      ),
                      Personage(
                        text: 'Алан Райлс',
                        text2: 'Человек, Мужской',
                        image: 'shest',
                      ),
                    ],
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
