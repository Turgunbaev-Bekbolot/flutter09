import 'package:flutter/material.dart';

class Epithodes extends StatelessWidget {
  final String text;
  final String text2;
  final String text3;
  final String image;

  const Epithodes({
    Key? key,
    required this.text,
    required this.text2,
    required this.text3,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Эпизоды',
                style: TextStyle(
                  color: Color(0xff0B1E2D),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Все эпизоды',
                style: TextStyle(
                  color: Color(0xff828282),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9147,
            height: 74,
            child: Row(
              children: [
                SizedBox(
                  width: 74,
                  height: 74,
                  child: Image.asset('assets/images/$image.png'),
                ),
                SizedBox(
                  width: 275,
                  height: 74,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                            color: Color(0xff22A2BD),
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Text(
                            text2,
                            style: TextStyle(
                              color: Color(0xff0B1E2D),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          text3,
                          style: TextStyle(
                            color: Color(0xff6E798C),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
