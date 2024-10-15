import 'package:flutter/material.dart';

class BaseLayout extends StatefulWidget {
  const BaseLayout({super.key, this.child});

  final Widget? child;

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  final ScrollController _scrollController = ScrollController();
  bool _isKeyboardOpen = false;

  @override
  Widget build(BuildContext context) {
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    // Se la tastiera è aperta e non abbiamo già scrollato
    if (keyboardHeight > 0 && !_isKeyboardOpen) {
      _isKeyboardOpen = true; // Imposta lo stato della tastiera a "aperta"

      // Aggiungi un leggero ritardo prima di fare lo scroll
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.delayed(const Duration(milliseconds: 300), () {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        });
      });
    } else if (keyboardHeight == 0 && _isKeyboardOpen) {
      _isKeyboardOpen = false; // La tastiera è chiusa
    }

    return Scaffold(
      resizeToAvoidBottomInset: false, // Gestione manuale della tastiera
      body: Stack(
        children: [
          // Sfondo
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
          // Contenuto scrollabile sopra l'immagine di sfondo
          SafeArea(
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(), // Effetto di rimbalzo su mobile
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 16.0,
                  bottom: keyboardHeight > 0 ? keyboardHeight : 16.0, // Aggiungi padding inferiore dinamico
                ),
                child: TextFieldTapRegion( // Avvolgi tutto il contenuto che ha TextField
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height - keyboardHeight,
                    ),
                    child: widget.child,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
