import 'package:flutter/material.dart';

class Series extends StatelessWidget {
  final String text;
  final bool? isColor;
  final bool? isCont;

  const Series({
    Key? key,
    required this.text,
    this.isColor = false,
    this.isCont = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: isColor! ? Color(0xff0B1E2D) : Color(0xffBDBDBD),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          isCont!
              ? Container(
                  width: 70,
                  height: 2,
                  color: Color(0xff0B1E2D),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
