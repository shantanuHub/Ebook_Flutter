import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mybookapp/main.dart';

void main() => runApp(MaterialApp(
  home: ProfilePage(),
),
);

class ProfilePage extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: <Widget>[

          ClipPath(
            child: Container(color: Colors.black,),
            clipper: BuildClipper(),
          ),
          Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 4 ,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0 ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20.0,
                            color: Colors.black87
                        )
                      ]  ,
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(70.0),
                      image: DecorationImage(
                          image: AssetImage('assets/logo2.png'),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),

                  SizedBox(height: 20.0),

                  Container(
                    child: Center(
                      child: Text("Mr. Shantanu",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Container(
                        child: Text("SHantanumishra30@gmail.com",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 30.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey ,width: 1.0 , style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Center(
                            child: Text("Eminem",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),),
                          )
                      ),
                      SizedBox(width: 8.0,),
                      Container(
                          height: 30.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey ,width: 1.0 , style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Center(
                            child: Text("Lady Gaga",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 30.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey ,width: 1.0 , style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Center(
                            child: Text("Enrique",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),),
                          )
                      ),
                      SizedBox(width: 8.0,),
                      Container(
                        height: 30.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.grey ,width: 1.0 , style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: Center(
                          child: Text("Queen Band",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),),
                        ),
                      ),
                      SizedBox(width: 8.0,),
                      Container(
                        height: 30.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.grey ,width: 1.0 , style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: Center(
                          child: Text("Rihaana",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("1000",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 18.0,
                            ),),
                          Text("FOLLOWERS",
                            style: TextStyle(
                              color: Colors.grey,

                              fontSize: 16.0,
                            ),),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("800",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 18.0,
                            ),),
                          Text("FOLLOWINGS",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("25",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 18.0,
                            ),),
                          Text("PROJECTS",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),),
                        ],
                      ),
                    ],

                  ),

                  SizedBox(height: 35.0,),

                  GestureDetector(
                    onTap: (){

                      auth.signOut();
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)
                          {
                            return MyApp();
                          }
                      ),
                      );

                    },
                    child: Container(
                        height: 35.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.grey ,width: 1.0 , style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: Center(
                          child: Text("Logout",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15.0,
                            ),),
                        )
                    ),
                  ),
                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}

class BuildClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path =  new Path();
    path.lineTo(0.0, 300.0);
    path.lineTo(size.width +220, 00.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return true;
  }
}



