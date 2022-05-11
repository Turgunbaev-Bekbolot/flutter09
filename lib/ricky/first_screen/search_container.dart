import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 54),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9147,
        height: 48,
        decoration: BoxDecoration(
          color: Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 0, left: 15),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Color(0xff5B6975),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 13),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6267,
                  height: 24,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Найти локацию',
                      hintStyle: TextStyle(
                        color: Color(0xffBDBDBD),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 2,
                height: 24,
                color: Color(0xffBDBDBD),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 16,
                height: 17,
                child: Image.asset('assets/images/lamp.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
