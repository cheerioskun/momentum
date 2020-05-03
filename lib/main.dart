import 'package:flutter/material.dart';
import 'package:momentum_app/services/authentication.dart';
import 'package:momentum_app/pages/root_page.dart';
import 'package:momentum_app/models/dark_flavor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello',
        debugShowCheckedModeBanner: false,
        darkTheme: DarkFlavor.theme(),
        
        home: RootPage(auth: Auth()));
  }
}
