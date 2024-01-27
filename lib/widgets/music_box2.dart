import 'package:flutter/material.dart';

class MusicBox2 extends StatelessWidget {
  const MusicBox2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      height: 45,
      width: 150,
      alignment: Alignment.center,
      child: const Text(
        "Playlist",
        style: TextStyle(color: Color.fromARGB(255, 50, 40, 40)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
