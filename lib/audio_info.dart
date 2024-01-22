import 'package:flutter/material.dart';

class AudioInfo extends StatelessWidget {
  const AudioInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Prime.png',
          width: 250,
        ),
        const SizedBox(height: 30),
        const Text(
          'Optimus Prime',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        const SizedBox(height: 30),
        const Text(
          'NCS Link',
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ],
    );
  }
}
