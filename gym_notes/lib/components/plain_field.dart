import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {

  String text;



  LoginTextField({this.text = ''});


  @override
  Widget build(BuildContext context) {

    return SizedBox(width: 250,height:40,child:TextField(
      style: TextStyle(color: Colors.white70),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: text,
        hintStyle: TextStyle(color: Colors.white60),
        contentPadding: EdgeInsets.only(left:15),
        filled: true,
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusColor: Color.fromRGBO(69, 68, 68, 1),
        fillColor: Color.fromRGBO(69, 68, 68, 1),

      ),));
  }

}