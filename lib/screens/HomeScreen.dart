import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mybookapp/TabScreens/Artists.dart';
import 'package:mybookapp/TabScreens/AudioBooks.dart';
import 'package:mybookapp/TabScreens/Podcasts.dart';
import 'package:mybookapp/screens/Profile.dart';
import 'package:mybookapp/screens/playBookScreen.dart';

import 'bookDescription.dart';


void main() => runApp(HomeScreen());
class HomeScreen extends StatefulWidget {

  static String id = 'Home-screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
      body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget  {

  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> with SingleTickerProviderStateMixin {

  TabController controller;

  FirebaseUser currentUser ;
  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    controller = TabController(
      length: 3 , vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0 , left: 10.0 , top: 10.0),
            child: Row(

              children: <Widget>[

                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)
                          {
                            return ProfilePage();
                          }
                    ),
                    );
                  },
                  child: CircleAvatar(backgroundImage: AssetImage('assets/logo2.png' ) ,
                  ),
                ),
                Spacer(),
                Icon(Icons.search , size: 25.0 , color: Colors.grey,)
              ],
            ),
          ),

        SizedBox(height: 18.0,),

          Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text( 'Welcome' , style: TextStyle(color: Colors.black ,fontSize:  40.0 ,fontWeight: FontWeight.w100),)),


          SizedBox(height: 15.0,),

          TabBar(
            controller: controller,
            isScrollable: true,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            tabs:
            <Widget>[
              Tab(
               child: Text("AudioBooks",
               style: TextStyle(
                fontWeight: FontWeight.w300,
              fontSize: 15.0 ,
               ),
               ),
              ),

              Tab(
                child: Text("Books",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15.0 ,
                  ),
                ),
              ),

              Tab(
                child: Text("Genre",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15.0 ,
                  ),
                ),
              ),

            ],
          ),

          Expanded (
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                Audiobooks(),
                Artists(),
                Podcasts()
              ] ,
            ),
          )
        ],
      ),
    );
  }
}
