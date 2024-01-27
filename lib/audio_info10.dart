import 'package:flutter/material.dart';

class AudioInfo10 extends StatelessWidget {
  const AudioInfo10({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Pirates.png',
          width: 250,
        ),
        const SizedBox(height: 30),
        const Text(
          'Pirates',
          style:
              TextStyle(fontSize: 30, color: Color.fromARGB(255, 149, 11, 1)),
        ),
        const SizedBox(height: 30),
        const Text(
          'Music',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ],
    );
  }
}
