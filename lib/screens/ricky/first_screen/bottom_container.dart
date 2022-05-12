import 'package:flutter/material.dart';

// class BottomContainer extends StatelessWidget {
//   const BottomContainer({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 60,
//         color: Colors.white,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             MiniCintainers(
//               image: 'one',
//               text: 'Персонажи',
//               isColor: true,
//             ),
//             MiniCintainers(
//               image: 'two',
//               text: 'Локации',
//               isColor: false,
//             ),
//             MiniCintainers(
//               image: 'three',
//               text: 'Эпизоды',
//               isColor: true,
//             ),
//             MiniCintainers(
//               image: 'four',
//               text: 'Настройки',
//               isColor: true,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MiniCintainers extends StatelessWidget {
  const MiniCintainers({
    Key? key,
    required this.image,
    required this.text,
    required this.isColor,
  }) : super(key: key);

  final String image;
  final String text;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Image.asset('assets/images/$image.png'),
        ),
        Text(
          text,
          style: TextStyle(
            color: isColor! ? Color(0xffBDBDBD) : Color(0xff22A2BD),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
