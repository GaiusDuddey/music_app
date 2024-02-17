import 'package:flutter/material.dart';

class AudioInfo2 extends StatelessWidget {
  const AudioInfo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('assets/images/SpiderMan.png',width: 250,height: 250,
          fit: BoxFit.cover,
          ),
        ),
        Text(
          'Spider Man',
          style: TextStyle(fontSize: 35,fontWeight: FontWeight.w400, color: Colors.white),
        ),
        const SizedBox(height: 30,),
        Text(
          'Music',
          style: TextStyle(fontSize: 35,color: Colors.black),
        )
      ],
    );
  }
}
