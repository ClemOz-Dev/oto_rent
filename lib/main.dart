import 'package:flutter/material.dart';
import 'package:oto_rent/pages/MyHomePage.dart';

// Fonction principale pour lancer l'application
void main() {
  // L'application lue se nomme MyApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "O'To Rent",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // La page d'accueil de l'application
      home: MyHomePage(title: "O'To Rent"),
    );
  }
}
