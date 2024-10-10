import 'package:flutter/material.dart';

class Button extends StatelessWidget{

  final Function() callback;
  final String text;

  Button({required this.text,required this.callback});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: callback,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Color.fromRGBO(69, 68, 68, 1),
        overlayColor: Colors.white30,
      ),
      child: Text(text,style: TextStyle(color: Colors.white70),));
  }}