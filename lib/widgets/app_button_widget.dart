import 'package:flutter/material.dart';

class Appbuttonwidget extends StatelessWidget {
  const Appbuttonwidget({
    Key? key,
    required this.title,
    required this.titleColor,
    required this.buttonbackgroundColor,
    required this.buttonborderColor,
    required this.routeName,
  }) : super(key: key);
  final String title;
  final Color titleColor;
  final Color buttonbackgroundColor;
  final Color buttonborderColor;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        width: 324,
        height: 45,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: buttonbackgroundColor,
            border: Border.all(
              color: buttonborderColor,
            )),
     ),
);
}
}