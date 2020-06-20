import 'package:flutter/material.dart';
import 'package:mybookapp/screens/HomeScreen.dart';
import 'package:mybookapp/screens/RegisterScreen.dart';
import 'package:mybookapp/screens/SigninScreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
      ),
      routes: {
        '/first' : (context) => SigninScreen(),
        '/second' : (context) => RegisterScreen(),
        HomeScreen.id : (context) => HomeScreen(),
        '/forth' : (context) => MyApp()

      },
      home: Scaffold(

        backgroundColor: Color(0xFF191927),
        body: StartScreen()
      ),
    );
  }
}

class StartScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        Text("Ebooks",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
        Hero(
          tag: 'logo',
          child: Image(
            image: AssetImage('assets/logo2.png' ,),
            height: 100.0,
          ),
        ),
        SizedBox(height: 80.0,),
        Container(
          margin: EdgeInsets.only(left: 18.0 ,right: 18.0),
          child: FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
            onPressed: (){
              Navigator.pushNamed(context, '/first');
            },
            padding: EdgeInsets.only(top: 15.0 , bottom: 15.0 , left: 10.0 , right: 10.0),
            color: Colors.blueAccent,
            focusColor: Colors.lightBlue,
            child: Text("Sign in" ,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Container(
          margin: EdgeInsets.only(left: 18.0 , right: 18.0),
          child: FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
            onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
            padding: EdgeInsets.only(top: 15.0 , bottom: 15.0 , left: 10.0 , right: 10.0),
            color: Colors.blueAccent,
            focusColor: Colors.lightBlue,
            child: Text("Register " ,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w200
              ),
            ),
          ),
        ),
      ],
    );
  }
}
