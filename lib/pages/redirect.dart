import 'package:flutter/material.dart';

class Redirect extends StatefulWidget {
  @override
  _RedirectState createState() => _RedirectState();
}

class _RedirectState extends State<Redirect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                goback(),
                header(),
                signupButton(),
                divide(),
                loginButton()

              ],
            ),
          ),
        ),
      ),

    );
  }

  Widget signupButton(){
    return
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0,25.0,20.0,0.0),
          child: Material(

            child: InkWell(
              onTap: (){

              },
              child: Container(
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 2.0
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                      child: Text('SIGN UP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'
                        ),
                      )
                  ),
                ),
              ),
            ),
          ),
        );


  }
  Widget loginButton(){
    return
      Padding(
        padding: const EdgeInsets.fromLTRB(15.0,25.0,15.0,0.0),
        child: Material(

          child: InkWell(
            onTap: (){

            },
            child: Container(
              height: 50,

              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2.0
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                    child: Text('LOG IN',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'
                      ),
                    )
                ),
              ),
            ),
          ),
        ),
      );


  }
  Widget header(){
    return Padding(
      padding: const EdgeInsets.only(top:40.0),
      child: Container(
        child: Center(
          child: Text('Email',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              fontSize: 30
            ),
          )
        ),
      ),
    );
  }

  Widget divide(){
    return Padding(
      padding: const EdgeInsets.only(top:25),
      child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15.0,right: 20.0),
                  child: Divider(
                    color: Colors.grey,
                    height: 50,
                    thickness: 1,
                  ),
                )
            ),

            Text("OR"),

            Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20.0,right: 15.0),
                  child: Divider(
                    color: Colors.grey,
                    height: 50,
                    thickness: 1,
                  ),
                )
            ),
          ]
      ),
    );
  }

  Widget goback(){
    return Container(
      child: Align(
        alignment: Alignment(-.80,-1.0),


        child: Material(
          child: GestureDetector(
            onTap: (){

            },
            child: Icon(
              Icons.keyboard_backspace
            ),
          ),

        ),
      ),

    );
  }




}
