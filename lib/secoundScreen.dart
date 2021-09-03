import 'package:flutter/material.dart';

class Secound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SECOUND SCREEN'),
      ),
      body: Center(
        child: Text(
          'THIS IS ANOTHER SCREEN DATA ',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
