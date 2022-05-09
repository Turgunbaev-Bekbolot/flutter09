import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 218,
              child: Image.asset(
                'assets/images/rick.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 138, left: 135),
              child: Container(
                width: 146,
                height: 146,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset('assets/images/rick2.png'),
              ),
            ),
          ],
        ),
        Text(
          'Рик Санчез',
          style: TextStyle(
            color: Color(0xff0B1E2D),
            fontSize: 34,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          'живой',
          style: TextStyle(
            color: Color(0xff43D049),
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 20,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9147,
            height: 80,
            child: Expanded(
              child: Text(
                'Главный    протагонист    мультсериала    «Рик и Морти».  Безумный ученый,  чей алкоголизм,  безрассудность  и  социопатия  заставляют  беспокоиться  семью  его  дочери.',
                style: TextStyle(
                  height: 1.4,
                  color: Color(0xff0B1E2D),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
