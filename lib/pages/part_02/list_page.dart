import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     settings: const RouteSettings(
                //       name: 'details',
                //       arguments: {
                //         'id': 10,
                //       },
                //     ),
                //     builder: (context) => const DetailPage(),
                //   ),
                // );
                Navigator.of(context).pushNamed(
                  '/detail_page',
                  arguments: {'id': 10},
                );
              },
              child: const Text('Details'),
            ),
          ],
        ),
      ),
    );
  }
}
