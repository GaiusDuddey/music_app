import 'package:flutter/material.dart';

class AudioInfo9 extends StatelessWidget {
  const AudioInfo9({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Thunder.png',
          width: 250,
        ),
        const SizedBox(height: 30),
        const Text(
          'Believer',
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
