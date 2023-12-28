import 'package:flutter/material.dart';

class Babysitter1 extends StatefulWidget {
  const Babysitter1({super.key});

  @override
  State<Babysitter1> createState() => _Babysitter1State();
}

class _Babysitter1State extends State<Babysitter1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Babysitter ",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
