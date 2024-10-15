import 'package:GymNotes/components/navigation/nav_bar.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  final Widget child;

  const AppView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Gestione manuale della tastiera
      body: Stack(
        children: [
          // Sfondo che copre l'intera schermata
          Positioned.fill(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ), // Sovrapposizione scura
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          // Contenuto sopra l'immagine di sfondo
          SafeArea(
            child: Column(
              children: [
                NavBar(),
                Flexible(
                  child: SingleChildScrollView(child:child),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
