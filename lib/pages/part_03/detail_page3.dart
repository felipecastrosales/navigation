import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage3 extends StatelessWidget {
  const DetailPage3({Key? key}) : super(key: key);

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
