import 'package:flutter/material.dart';
class BottombarSearch extends StatefulWidget {
  const BottombarSearch({ Key? key }) : super(key: key);

  @override
  _BottombarSearchState createState() => _BottombarSearchState();
}

class _BottombarSearchState extends State<BottombarSearch> {
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