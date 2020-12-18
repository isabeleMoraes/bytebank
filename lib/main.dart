import 'package:bytebank/routes.dart';
import 'package:bytebank/temas/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      initialRoute: '/',
      routes: routes
      // home: Scaffold(
      //   body: ListaTranferencias(), //Outra forma de setar a classe principal.
      // ),
    );
  }
}




