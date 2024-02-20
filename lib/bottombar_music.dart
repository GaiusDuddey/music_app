import 'package:flutter/material.dart';
class BottombarMusic extends StatefulWidget {
  const BottombarMusic({ Key? key }) : super(key: key);

  @override
  _BottombarMusicState createState() => _BottombarMusicState();
}

class _BottombarMusicState extends State<BottombarMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
      
    );
  }
}