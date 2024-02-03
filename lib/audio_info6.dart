import 'package:flutter/material.dart';

class AudioInfo6 extends StatelessWidget {
  const AudioInfo6({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('assets/images/Space.png',width: 250,height: 250,
          fit: BoxFit.cover,
          ),
        ),
        Text(
          'Ignite',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w100, color: Color.fromARGB(255, 149, 11, 1)),
        ),
        const SizedBox(height: 30,),
        Text(
          'Music',
          style: TextStyle(fontSize: 30,color: Colors.black),
        )
      ],
    );
  }
}
