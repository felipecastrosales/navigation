import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/page_01.dart';
import 'pages/page_02.dart';
import 'pages/page_03.dart';
import 'pages/page_04.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation | Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const HomePage(),
      routes: {
        '/': (_) => const HomePage(),
        '/page01': (_) => const Page01(),
        Page02.routeName: (_) => const Page02(),
        '/page03': (_) => const Page03(),
        '/page04': (_) => const Page04(),
      },
    );
  }
}
