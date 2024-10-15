import 'package:GymNotes/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/button.dart';
import '../layouts/base_layout.dart';
import '../components/plain_field.dart';
import '../components/password_field.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        child: Center(
            child: Column(
      children: [
        const SizedBox(height: 40),
        Text("GYM NOTES",
            style: GoogleFonts.kodchasan(
                letterSpacing: 20,
                fontWeight: FontWeight.w300,
                fontSize: 64,
                fontStyle: FontStyle.italic,
                color: Color.fromRGBO(224, 212, 41, 1))),
        const SizedBox(height: 15),
        SizedBox(
          width: 400,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Color.fromRGBO(38, 37, 37, 1),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("LOGIN",
                      style: GoogleFonts.itim(
                          letterSpacing: 20,
                          fontWeight: FontWeight.normal,
                          fontSize: 50,
                          color: Color.fromRGBO(255, 255, 255, 1))),
                  SizedBox(
                    height: 50,
                  ),
                  LoginTextField(text: "Usernamess"),
                  SizedBox(
                    height: 20,
                  ),
                  PasswordField(),
                  SizedBox(
                    height: 20,
                  ),
                  Button(text: "Accedi ", callback: () => {
                    context.go(routeHome)
                  }),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    endIndent: 20,
                    indent: 20,
                  ),
                  Text("Non hai un account?",
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 15,
                  ),
                  Button(
                      text: "Registrati", callback: () => {print("premuto")}),
                ],
              ),
            ),
          ),
        )
      ],
    )));
  }
}
