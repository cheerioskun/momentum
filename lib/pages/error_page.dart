import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Directionality(
        child: Center(
          child: Text("ERROR"), 
        ),
        textDirection: TextDirection.ltr
      ),
    );
  }
}