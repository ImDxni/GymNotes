import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5), // Sovrapposizione scura
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Spaziatura intorno al contenuto
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
