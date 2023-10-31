import 'package:flutter/material.dart';

class DisplayDataPage extends StatelessWidget {
  final String data;

  DisplayDataPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            data,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
