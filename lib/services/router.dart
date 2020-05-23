import 'package:flutter/material.dart';
import 'package:momentum_app/pages/error_page.dart';
import 'package:momentum_app/pages/login_signup_page.dart';
import 'package:momentum_app/pages/root_page.dart';
import 'package:momentum_app/pages/welcome_page.dart';

import 'authentication.dart';

class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    print("INSIDE ROUTER: ROUTE IS ${settings.name}");

    switch(settings.name){
        
        case '/': 
          return MaterialPageRoute(
            builder: (context) => RootPage()
          );
          break;
        case '/login_signup':
          return MaterialPageRoute(
            
            builder: (context) => LoginSignupPage(auth: Auth(), loginCallback: () => {},),
          );
        case '/welcome':
          return MaterialPageRoute(
            builder: (_) => WelcomePage()
          );
        default:
          return MaterialPageRoute(builder: (_) => ErrorPage());
      }
  }
}
