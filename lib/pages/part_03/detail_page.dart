import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage2 extends StatelessWidget {
  final String parameter;
  const DetailPage2({
    Key? key,
    required this.parameter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: Text(parameter),
      ),
    );
  }
}
