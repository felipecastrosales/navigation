import 'package:flutter/material.dart';

class DetailPage3 extends StatelessWidget {
  const DetailPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop('Parameter returned for DetailPage3');
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
