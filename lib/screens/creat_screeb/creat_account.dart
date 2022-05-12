import 'package:flutter/material.dart';
import 'package:lesson34_practice/screens/creat_screeb/custom_textfield.dart';
import 'package:lesson34_practice/screens/signin_screen/log_password.dart';
import 'package:lesson34_practice/screens/signin_screen/sign_in_screen.dart';

class CreatAccount extends StatelessWidget {
  const CreatAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPassword(),
                ));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff0A1B28),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Создать аккаунт',
                style: TextStyle(
                  color: Color(0xff0A1B28),
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextfield(
                text: 'Имя',
                text2: 'Имя',
              ),
              CustomTextfield(
                text: 'Фамилия',
                text2: 'Фамилия',
              ),
              CustomTextfield(
                text: 'Отчество',
                text2: 'Отчество',
              ),
              LogPassword(),
            ],
          ),
        ),
      ),
    );
  }
}
