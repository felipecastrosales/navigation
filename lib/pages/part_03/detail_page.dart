import 'package:flutter/material.dart';

class DetailPage2 extends StatelessWidget {
  const DetailPage2({
    super.key,
    required this.parameter,
  });

  final String parameter;

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
