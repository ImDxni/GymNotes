
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PasswordFieldState();

}


class PasswordFieldState extends State<PasswordField>{
  bool hide = true;

  void toggleHide(){
    setState(() {
      hide = !hide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 250,height:40,child:TextField(
      style: TextStyle(color: Colors.white70),
      cursorColor: Colors.white,
      obscureText: hide,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.white60),
        contentPadding: EdgeInsets.only(left:15),
        filled: true,
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusColor: Color.fromRGBO(69, 68, 68, 1),
        fillColor: Color.fromRGBO(69, 68, 68, 1),

        suffixIcon: IconButton(onPressed: toggleHide, icon: Icon(hide ? Icons.visibility : Icons.visibility_off, color: Colors.white70,)),

      ),));
  }

}