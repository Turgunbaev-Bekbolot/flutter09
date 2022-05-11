import 'package:flutter/material.dart';
import 'package:lesson34_practice/screens/personage_screen/personage.dart';

class Personages extends StatelessWidget {
  const Personages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 54),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9147,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color(0xff5B6975),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 13),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6267,
                          height: 24,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Найти пресонажа',
                              hintStyle: TextStyle(
                                color: Color(0xffBDBDBD),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 2,
                        height: 24,
                        color: Color(0xffBDBDBD),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 16,
                        height: 17,
                        child: Image.asset('assets/images/lamp.png'),
                      ),
                    ],
                  ),
                ),
              ),
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
