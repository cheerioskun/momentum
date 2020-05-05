import 'package:flutter/material.dart';
import 'package:momentum_app/pages/login_signup_page.dart';
import 'package:momentum_app/services/authentication.dart';
import 'package:momentum_app/pages/root_page.dart';
import 'package:momentum_app/models/dark_flavor.dart';
import 'package:momentum_app/pages/login_signup_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Momentum',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: DarkFlavor.theme(),

        onGenerateRoute: (RouteSettings settings) {
          switch(settings.name){
            case '/': 
              return MaterialPageRoute(
                builder: (context) => RootPage(auth: Auth())
              );
              break;
            case '/login_signup':
              return MaterialPageRoute(
                builder: (context) => LoginSignupPage(auth: settings.arguments.auth, ))
          }

        },
    );
  }
}
