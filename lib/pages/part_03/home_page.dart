import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/detail_page',
                  arguments: 'Parameter by pushNamed',
                );
                // ignore: avoid_print
                print('Go to detail_page');
              },
              child: const Text('DetailPage | pushNamed'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: '/detail_page',
                      //arguments: 'Parameter by MaterialPageRoute',
                    ),
                    builder: (context) => const DetailPage2(
                      parameter: 'Parameter by MaterialPageRoute',
                    ),
                  ),
                );
              },
              child: const Text('DetailPage | push'),
            ),
            TextButton(
              onPressed: () async {
                var message =
                    await Navigator.of(context).pushNamed('/detail_page3');
                // ignore: avoid_print
                print('Message: $message');
              },
              child: const Text('DetailPage 03'),
            ),
          ],
        ),
      ),
    );
  }
}
