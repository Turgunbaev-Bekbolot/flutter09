import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Настройки',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 7,
                  top: 10,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8933,
                  height: 80,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.asset('assets/photos/elipse1.png'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Oleg Belotserkovsky',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Rick',
                            style: TextStyle(
                              color: Color(0xff828282),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 7),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.8933,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1, color: Color(0xff22A2BD)),
                    ),
                    child: Text(
                      'Редактировать',
                      style: TextStyle(
                        color: Color(0xff22A2BD),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 55,
                  bottom: 25,
                ),
                child: Text(
                  'Внешний вид',
                  style: TextStyle(
                    color: Color(0xff828282),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 41),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Темная тема',
                          style: TextStyle(
                            color: Color(0xff0B1E2D),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Включена',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff0B1E2D),
                      size: 17,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9147,
                  height: 2,
                  color: Color(0xffF2F2F2),
                ),
              ),
              Text(
                'О приложении',
                style: TextStyle(
                  color: Color(0xff828282),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9147,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.',
                          style: TextStyle(
                            color: Color(0xff0B1E2D),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9147,
                height: 2,
                color: Color(0xffF2F2F2),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'Версия приложения',
                  style: TextStyle(
                    color: Color(0xff828282),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                'Rick & Morty v1 0.0',
                style: TextStyle(
                  color: Color(0xff0B1E2D),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
