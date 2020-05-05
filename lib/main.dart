import 'package:flutter/material.dart';
import 'package:momentum_app/models/dark_flavor.dart';
import 'package:momentum_app/pages/root_page.dart';
import 'package:momentum_app/services/authentication.dart';


void main() {
  runApp(MomentumApp());
}

class MomentumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Momentum',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: DarkFlavor.theme(),
        home: RootPage(auth: Auth()),
    );
  }
}
