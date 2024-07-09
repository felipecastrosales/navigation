import 'package:flutter/material.dart';

import 'page_04.dart';

class Page03 extends StatelessWidget {
  const Page03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page | 03'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Page | 04 -> page'),
            onPressed: () {
              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(
              //     settings: const RouteSettings(name: 'page04'),
              //     builder: (context) => const Page04(),
              //   ),
              // );
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: const RouteSettings(name: 'page04'),
                  builder: (context) => const Page04(),
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Page | 03 -> pop'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            child: const Text('Page | 04 -> named'),
            onPressed: () {
              Navigator.of(context).pushNamed('/page04');
            },
          ),
        ],
      ),
    );
  }
}
