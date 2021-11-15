import 'package:flutter/material.dart';

import 'pages/part_01/home_page.dart';
import 'pages/part_01/page_01.dart';
import 'pages/part_01/page_02.dart';
import 'pages/part_01/page_03.dart';
import 'pages/part_01/page_04.dart';
import 'pages/part_02/list_page.dart';
import 'pages/part_02/detail_page.dart';

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
      initialRoute: '/list_page',
      routes: {
        '/': (_) => const HomePage(),
        '/page01': (_) => const Page01(),
        Page02.routeName: (_) => const Page02(),
        '/page03': (_) => const Page03(),
        '/page04': (_) => const Page04(),
        '/list_page': (_) => const ListPage(),
        '/detail_page': (_) => const DetailPage(),
      },
    );
  }
}
