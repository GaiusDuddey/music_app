import 'package:flutter/material.dart';

class AudioInfo7 extends StatelessWidget {
  const AudioInfo7({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Paint.png',
          width: 250,
        ),
        const SizedBox(height: 30),
        const Text(
          'Alone',
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
