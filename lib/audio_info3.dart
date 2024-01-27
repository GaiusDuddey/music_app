import 'package:flutter/material.dart';

class AudioInfo3 extends StatelessWidget {
  const AudioInfo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Image.asset(
            'assets/images/Night.png',
            width: 250,
          ),
        const SizedBox(height: 30),
        const Text(
          'Into The Wild',
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
