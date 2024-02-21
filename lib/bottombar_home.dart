import 'package:flutter/material.dart';
class BottombarHome extends StatefulWidget {
  const BottombarHome({ Key? key }) : super(key: key);

  @override
  _BottombarHomeState createState() => _BottombarHomeState();
}

class _BottombarHomeState extends State<BottombarHome> {
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