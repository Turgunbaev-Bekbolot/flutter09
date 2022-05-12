import 'package:flutter/material.dart';
import 'package:lesson34_practice/screens/epizodes_screen/custom_series.dart';
import 'package:lesson34_practice/screens/epizodes_screen/series.dart';
import 'package:lesson34_practice/screens/ricky/first_screen/search_container.dart';

class Epizodes extends StatelessWidget {
  const Epizodes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, top: 40),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9147,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(100),
              ),
              child: SearchContainer(
                hintText: 'Найти эпизод',
                hasSuffixIcon: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 20,
              ),
              child: SizedBox(
                width: 450,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Series(
                          text: 'Серия 1',
                          isColor: true,
                          isCont: true,
                        ),
                        Series(text: 'Серия 2'),
                        Series(text: 'Серия 3'),
                        Series(text: 'Серия 4'),
                        Series(text: 'Серия 5'),
                        Series(text: 'Серия 6'),
                        Series(text: 'Серия 7'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 410,
              height: 450,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  CustomSeries(
                    text: 'Серия 1',
                    text2: 'Пилот',
                    textData: '2 декабря 2013',
                    image: 'one',
                  ),
                  CustomSeries(
                    text: 'Серия 2',
                    text2: 'Пёс газонокосильщик',
                    textData: '9 декабря 2013',
                    image: 'two',
                  ),
                  CustomSeries(
                    text: 'Серия 3',
                    text2: 'Анатомический парк',
                    textData: '16 декабря 2013',
                    image: 'three',
                  ),
                  CustomSeries(
                    text: 'Серия 4',
                    text2: 'М. Найт Шьямал-Инопланетяне',
                    textData: '13 января 2014 года',
                    image: 'four',
                  ),
                  CustomSeries(
                    text: 'Серия 5',
                    text2: 'Мисикс и разрушение',
                    textData: '20 января 2014',
                    image: 'five',
                  ),
                  CustomSeries(
                    text: 'Серия 6',
                    text2: 'Напиток Рика №9',
                    textData: '20 декабря 2014',
                    image: 'six',
                  ),
                  CustomSeries(
                    text: 'Серия 7',
                    text2: 'Напиток Рика №9',
                    textData: '20 декабря 2014',
                    image: 'six',
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
