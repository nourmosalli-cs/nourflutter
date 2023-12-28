import 'package:flutter/material.dart';

class Parent1 extends StatefulWidget {
  const Parent1({super.key});

  @override
  State<Parent1> createState() => _Parent1State();
}

class _Parent1State extends State<Parent1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Parent",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
