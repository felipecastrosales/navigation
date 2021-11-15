import 'package:flutter/material.dart';

import 'page_01.dart';

class Page04 extends StatelessWidget {
  const Page04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page | 04'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Page | 01 -> page'),
            onPressed: () {
              // Navigator.of(context).pushAndRemoveUntil(
              //   MaterialPageRoute(
              //     settings: const RouteSettings(name: 'page01'),
              //     builder: (context) => const Page01(),
              //   ),
              //   ModalRoute.withName('page03'),
              // );
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  settings: const RouteSettings(name: 'page01'),
                  builder: (context) => const Page01(),
                ),
                (route) => route.isFirst, // false
              );
            },
          ),
          ElevatedButton(
            child: const Text('Page | 04 -> pop'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            child: const Text('Page | 01 -> named'),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/page01',
                ModalRoute.withName('page01'),
              );
            },
          ),
        ],
      ),
    );
  }
}
