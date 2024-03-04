import 'package:flutter/material.dart';

class anime extends StatefulWidget {
  const anime({super.key});

  @override
  State<anime> createState() => _animeState();
}

class _animeState extends State<anime>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'MUSIC',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: Colors.white30),
              ),
              child:  const CircleAvatar(
                backgroundImage: AssetImage('icons/musicicon.png'),
              ),
            ),

            ElevatedButton(onPressed: (){

            },
                child: Text("Start"))
          ],
        ),
      )
    );
  }
}
