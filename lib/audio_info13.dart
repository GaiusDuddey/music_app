import 'package:flutter/material.dart';

class AudioInfo13 extends StatelessWidget {
  const AudioInfo13({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('assets/images/Rock.png',width: 250,height: 250,
          fit: BoxFit.cover,
          ),
        ),
        Text(
          'Coffin',
          style: TextStyle(fontSize: 35,fontWeight: FontWeight.w400, color: Colors.white),
        ),
        const SizedBox(height: 35,),
        Text(
          'Music',
          style: TextStyle(fontSize: 30,color: Colors.black),
        )
      ],
    );
  }
}
