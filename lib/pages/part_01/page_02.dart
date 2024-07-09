import 'package:flutter/material.dart';

import 'page_03.dart';

class Page02 extends StatelessWidget {
  const Page02({super.key});

  static const String routeName = '/page02';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page | 02'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Page | 03 -> page'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: const RouteSettings(name: 'page03'),
                  builder: (context) => const Page03(),
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Page | 02 -> pop'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            child: const Text('Page | 03 -> named'),
            onPressed: () {
              Navigator.of(context).pushNamed('/page03');
            },
          ),
        ],
      ),
    );
  }
}
