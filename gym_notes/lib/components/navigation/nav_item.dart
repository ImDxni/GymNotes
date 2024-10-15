import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationItem extends StatefulWidget {
  final String title;
  final String routeName;

  NavigationItem({required this.title, required this.routeName});

  @override
  State<StatefulWidget> createState() => NavigationItemState();
}

class NavigationItemState extends State<NavigationItem> {
  bool hover = false;

  void toggleUnderline(bool state) {
    setState(() {
      hover = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: InkWell(
        onHover: (state) {
          toggleUnderline(state);
        },
        onTap: () {
          context.go(widget.routeName);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: GoogleFonts.koulen(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 4), // Spazio tra il testo e la linea
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: 2,
              width: hover ? 50 : 0, // Larghezza della linea animata
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
