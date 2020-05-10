import 'package:momentum_app/services/authentication.dart';

class LoginArguments{
  LoginArguments({this.auth, this.loginCallback, this.logoutCallback, this.userId});
  final BaseAuth auth;
  final Function loginCallback;
  final Function logoutCallback;
  final String userId;
}