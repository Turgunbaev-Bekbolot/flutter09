import 'package:flutter/material.dart';
import 'package:lesson34_practice/first_screen/first_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(),
    );
  }
}
