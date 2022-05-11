import 'package:flutter/material.dart';

class Personage extends StatelessWidget {
  final String text;
  final String text2;
  final String image;

  const Personage({
    Key? key,
    required this.text,
    required this.text2,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 122,
          child: Image.asset('assets/photos/$image.png'),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          'ЖИВОЙ',
          style: TextStyle(
            color: Color(0xff43D049),
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xff0B1E2D),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            color: Color(0xff828282),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
