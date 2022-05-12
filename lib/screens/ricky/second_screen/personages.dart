import 'package:flutter/material.dart';
import 'package:lesson34_practice/screens/ricky/third_screen/third_scaffold.dart';

class Personage extends StatelessWidget {
  final String text;
  final String image;
  final bool? isColor;
  final bool? isText;

  const Personage({
    Key? key,
    required this.text,
    required this.image,
    this.isColor,
    this.isText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ThirdScreen()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 35),
        width: MediaQuery.of(context).size.width * 0.9147,
        height: 74,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 74,
              height: 74,
              child: Image.asset('assets/images/$image.png'),
            ),
            SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 150,
              height: 74,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isText! ? 'живой' : 'мертвый',
                    style: TextStyle(
                      color: isColor! ? Color(0xff43D049) : Colors.red,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Color(0xff0B1E2D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Человек, Мужской',
                    style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff0B1E2D),
            ),
          ],
        ),
      ),
    );
  }
}
