import 'package:flutter/material.dart';

import 'core/navigator_observer_custom.dart';
import 'pages/part_03/detail_page.dart';
import 'pages/part_03/detail_page3.dart';
import 'pages/part_03/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation | Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const HomePage2(),
          );
        }
        if (settings.name == '/detail_page') {
          final parameter = settings.arguments as String?;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetailPage2(
              parameter: parameter ?? 'Parameter not send',
            ),
          );
        }

        return null;
      },
      routes: {
        '/': (_) => const HomePage2(),
        '/detail_page3': (_) => const DetailPage3(),
      },
    );
  }
}
