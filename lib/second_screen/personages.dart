import 'package:flutter/material.dart';

class Personage extends StatelessWidget {
  final String text;
  final String image;
  final bool? isColor;

  const Personage({
    Key? key,
    required this.text,
    required this.image,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Container(
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 110),
                child: SizedBox(
                  width: 150,
                  height: 74,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'живой',
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
              ),
            ),
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
