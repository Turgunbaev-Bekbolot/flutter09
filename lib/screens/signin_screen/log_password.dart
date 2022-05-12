import 'package:flutter/material.dart';
import 'package:lesson34_practice/main.dart';

class LogPassword extends StatelessWidget {
  const LogPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Логин',
            style: TextStyle(
              color: Color(0xff212121),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8507,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffF2F2F2),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Color(0xff5B6975),
                ),
                border: InputBorder.none,
                hintText: 'Логин',
                hintStyle: TextStyle(
                  color: Color(0xff5B6975),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Пароль',
            style: TextStyle(
              color: Color(0xff212121),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8507,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffF2F2F2),
            ),
            child: TextField(
              obscuringCharacter: '*',
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xff5B6975),
                ),
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        'assets/photos/lock.png',
                        color: Color(0xff5B6975),
                      ),
                    ),
                  ],
                ),
                border: InputBorder.none,
                hintText: 'Пароль',
                hintStyle: TextStyle(
                  color: Color(0xff5B6975),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomBottomBar(),
                  ));
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.8507,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff22A2BD),
              ),
              child: Text(
                'Войти',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
