import 'package:momentum_app/services/authentication.dart';

class LoginArguments{
  LoginArguments({this.auth, this.callBack, this.userId});
  final BaseAuth auth;
  final Function callBack;
  final String userId;
}