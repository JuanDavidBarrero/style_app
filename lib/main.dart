import 'package:flutter/material.dart';

import 'package:estilos/scr/pages/basico_page.dart';
import 'package:estilos/scr/pages/third_page.dart';
import 'package:estilos/scr/pages/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'third',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'second': (BuildContext context) => SecondPage(),
        'third': (BuildContext context) => ThirdPage(),
      },
    );
  }
}
