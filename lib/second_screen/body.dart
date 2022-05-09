import 'package:flutter/material.dart';
import 'package:lesson34_practice/second_screen/personages.dart';
import 'package:lesson34_practice/third_screen/third_scaffold.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 298,
            child: Image.asset(
              'assets/images/earth.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 251),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 886,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26),
                  topRight: Radius.circular(26),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Земля С-137',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Мир',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 1, left: 5, right: 5),
                          child: Container(
                            width: 2,
                            height: 2,
                            color: Color(0xff828282),
                          ),
                        ),
                        Text(
                          'Измереник С-137',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9147,
                        height: 80,
                        child: Expanded(
                          child: Text(
                            'Это планета, на которой проживает человеческая раса, и главное место для персонажей Рика и Морти. Возраст этой Земли более 4,6 миллиардов лет, и она является четвертой планетой от своей звезды.',
                            style: TextStyle(
                              color: Color(0xff0B1E2D),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Персонажи',
                      style: TextStyle(
                        color: Color(0xff0B1E2D),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThirdScreen()),
                        );
                      },
                      child: Personage(
                        text: 'Рик Санчез',
                        image: 'oneone',
                        isColor: true,
                      ),
                    ),
                    Personage(
                      text: 'Директор Агенства',
                      image: 'dva',
                      isColor: true,
                    ),
                    Personage(
                      text: 'Морти Смит',
                      image: 'tri',
                      isColor: true,
                    ),
                    Personage(
                      text: 'Саммер Смит',
                      image: 'salam',
                      isColor: true,
                    ),
                    Personage(
                      text: 'Альберт Эйнштейн',
                      image: 'five',
                      isColor: false,
                    ),
                    Personage(
                      text: 'Алан Райлс',
                      image: 'six',
                      isColor: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
