import 'package:flutter/material.dart';

class MusicBox3 extends StatelessWidget {
  const MusicBox3({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/spiderman");
      },
      child: Container(
        height: 120,
        width: 120,
        /*       decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          /* color: Colors.amber, */
        ),
        child: Image.asset(
          'assets/images/SpiderMan.png',
          fit: BoxFit.cover,
        ), */
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: const Image(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/Paint.png'),
            width: 100.0,
            height: 100.0,
          ),
        ),

        /* height: 120,
        width: 120, */
      ),
    );
  }
}
