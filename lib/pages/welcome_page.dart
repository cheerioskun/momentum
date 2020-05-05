import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momentum_app/models/argument_wrappers.dart';
import 'package:momentum_app/pages/login_signup_page.dart';




class WelcomePage extends StatelessWidget {
  WelcomePage({this.arguments});
  final LoginArguments arguments;
  @override
  Widget build(BuildContext context) {
    print("INSIDE WELCOME");
    
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.fromLTRB(10.0,195.0,0.0,0.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Align(
                alignment: Alignment(-0.6,-1.0),
                  child: welcomeText(),
                ),
              ),
              phoneButton(),
              facebookButton(),
              emailButton(context, arguments)
            ],
          ),
        ),
      )


    );
  }


  Widget welcomeText(){
    return Stack(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,0.0),
            child: Text(
              'Hello',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0,75.0,0.0,0.0),
            child: Text(
              'There',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(200.0, 75.0, 0.0, 0.0),
            child: Text(
              '.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0,
                  color:Colors.green
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 190.0, 0.0, 0.0),
            child: Text(
              'Continue with',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:Colors.white
              ),
            ),
          ),
        )


      ],


    );
  }
  Widget phoneButton(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0,18.0,0.0,0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(

            height: 50.0,
            width:300.0,
            child: Material(
              elevation: 7.0,
              borderRadius: BorderRadius.circular(20.0),
              shadowColor:Colors.green,
              color: Colors.green,
              child: InkWell(
                onTap: (){
                    
                  },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(80.0,0.0,0.0,0.0),
                      child: Icon(
                        Icons.phone_iphone
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0,0.0),
                      child: Text(
                        'PHONE NUMBER',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
  Widget emailButton(BuildContext context, LoginArguments arguments){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0,18.0,0.0,0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(

            height: 50.0,
            width:300.0,
            child: Material(
              elevation: 7.0,
              borderRadius: BorderRadius.circular(20.0),
              shadowColor:Colors.white,
              color: Colors.white,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginSignupPage(auth: arguments.auth, loginCallback: arguments.callBack),
                    )
                  );
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(110.0,0.0,0.0,0.0),
                      child: Icon(
                          Icons.email,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0,0.0),
                      child: Text(
                        'EMAIL',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
  Widget facebookButton(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0,18.0,0.0,0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(

            height: 50.0,
            width:300.0,
            child: Material(
              elevation: 7.0,
              borderRadius: BorderRadius.circular(20.0),
              shadowColor:Colors.black,
              color: Colors.black,
              child: InkWell(
                onTap: (){

                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(90.0,0.0,0.0,0.0),
                      child: Icon(
                          Icons.alternate_email
                        ),

                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0,0.0),
                      child: Text(
                        'FACEBOOK',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }


}

