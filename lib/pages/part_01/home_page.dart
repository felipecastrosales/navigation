import 'package:flutter/material.dart';

import 'page_02.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page | 0'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Page | 02 -> push'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: const RouteSettings(name: 'page02'),
                  builder: (context) => const Page02(),
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Page | 02 -> named'),
            onPressed: () {
              Navigator.of(context).pushNamed(Page02.routeName);
            },
          ),
        ],
      ),
    );
  }
}
