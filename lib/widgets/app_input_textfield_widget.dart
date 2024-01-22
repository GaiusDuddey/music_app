import 'package:flutter/material.dart';

class Appinputtextfieldwidget extends StatelessWidget {
   Appinputtextfieldwidget({
    Key? key,
    required this.controller,
    required this.title,
    required this.hintText,
  }) : super(key: key);
  TextEditingController? controller;
  final String title;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8,),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
        ),
],
);
}
}