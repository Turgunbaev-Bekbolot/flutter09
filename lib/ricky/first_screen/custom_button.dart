import 'package:flutter/material.dart';
import 'package:lesson34_practice/ricky/second_screen/second_scaffold.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String image;
  final bool? isText;

  const CustomButton({
    required this.image,
    required this.text,
    this.isText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: isText!
                ? Text(
                    'Всего локаций: 200',
                    style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : SizedBox(),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9147,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.asset(
                'assets/images/$image.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9147,
            height: 68,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(20),
              ),
              border: Border.all(
                width: 1,
                color: Colors.grey.shade300,
              ),
            ),
            child: InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),
                );
              }),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 3,
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
