
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:GymNotes/routing/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp.router(
        title: 'GymNotee',
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,

      ),
    );
  }
}

class MyAppState extends ChangeNotifier {

}