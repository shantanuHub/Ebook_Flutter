import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'HomeScreen.dart';

void main() => runApp(RegisterScreen());

class RegisterScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RegisterScreen> {
  final auth = FirebaseAuth.instance;
  String email, password;

  bool _saving  = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Color(0xFF191927),
        body: ModalProgressHUD(
          inAsyncCall: _saving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Register User",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              Image(
                image: AssetImage(
                  'assets/logo2.png',
                ),
                height: 120.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.email, color: Colors.white, size: 25.0),
                    alignLabelWithHint: true,
                    labelText: 'Enter Email',
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding: EdgeInsets.only(right: 10.0, left: 10.0),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.lock_open, color: Colors.white, size: 25.0),
                    labelText: 'Enter Password',
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 18.0, right: 18.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  onPressed: () async {
                    setState(() {
                      _saving = true;
                    });
                    try {
                      final newUser = await auth.createUserWithEmailAndPassword(
                          email: email, password: password);

                      if (newUser != null) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)
                              {
                                return HomeScreen();
                              }
                        ),
                        );

                        setState(() {
                          _saving = false;
                        });
                      }
                    } catch (exception) {
                      print(exception);
                    }
                  },
                  padding: EdgeInsets.only(
                      top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                  color: Colors.blueAccent,
                  focusColor: Colors.lightBlue,
                  child: Text(
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
