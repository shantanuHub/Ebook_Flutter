import 'package:flutter/material.dart';
import 'package:mybookapp/screens/playBookScreen.dart';

void main() => runApp(Audiobooks());

class Audiobooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Container(
              height: 200.0,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0 , top: 15.0 , right:  10.0 ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: ()
                  {
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context)
                  {
                  return playBook(title: "See You In Piazza", author: 'France Mayer',assImg:  'assets/book4.jpg');
                  }
                  ),
                  );
                  },
                        child: _AudiobookCard('assets/book4.jpg')),
                    SizedBox(width: 10.0),
                    GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)
                              {
                                return playBook(title: "Lore", author: 'Aaron Mah',assImg:  'assets/book1.jpg');
                              }
                          ),
                          );
                        },
                        child: _AudiobookCard('assets/book1.jpg')),
                    SizedBox(width: 10.0),
                    GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)
                              {
                                return playBook(title: "Dont Let Him Know", author: 'Sandeep Roy',assImg:  'assets/book5.jpg');
                              }
                          ),
                          );
                        },
                        child: _AudiobookCard('assets/book5.jpg')),
                    SizedBox(width: 10.0),
                    GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)
                              {
                                return playBook(title: "How To Write First Book", author: 'Ross Galler',assImg:  'assets/book7.jpg');
                              }
                          ),
                          );
                        },
                        child: _AudiobookCard('assets/book7.jpg')),

                  ],
                ),
              ),
            ),

            SizedBox(height: 8.0,),

            Padding(
                padding: EdgeInsets.only(left: 10.0 , top: 15.0 , bottom: 8.0) ,
                child: Text("Playlist" , style: TextStyle(color: Colors.black ,fontSize:  35.0 ,fontWeight: FontWeight.w300),),
            ),

            _PlaylistCard('assets/bookimage1.jpg', "Monk who sold his ferreri", "Robin Sharma", "10:00"),

            _PlaylistCard('assets/bookimage2.jpeg', "The Secrets", "rohnda byon", "14:00"),

            _PlaylistCard('assets/bookimage3.jpg', "And then there were none", "rohnda byon", "5:00"),

            _PlaylistCard('assets/book3.jpg', "Beautiful Ruins", "walter wit", "10:00"),

            _PlaylistCard('assets/book5.jpg', "dont let him know", "Sandeep Roy", "90:00"),


          ],

        ),



      ),
    );
  }

  Widget _AudiobookCard(String assetImg) {
    return Container(
      height: 200.0,
      width: 140.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(assetImg , fit: BoxFit.cover , height: 27.0, width: 40.0),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: CircleAvatar(
              backgroundColor: Colors.white70,
              child: Icon(Icons.play_circle_filled , color: Colors.black54,),
            ),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  _PlaylistCard(String imgAss , String tittleText , String descText  , String timmer) {

    return Padding(
      padding: EdgeInsets.only(left: 20.0 , top: 20.0 , right: 20.0),
      child: Container(
        child: Row(
            children: <Widget>[
              ClipRRect(
                child: Image.asset(imgAss , height: 30.0, width: 30.0, fit: BoxFit.cover),
              ),

              SizedBox(width: 15.0,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(tittleText ,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 18.0
                  ),
                  ),

                  SizedBox(width: 5.0,),

                  Text(descText ,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 15.0
                    ),
                  ),
                ],
              ),

              Spacer(),

              Text(timmer ,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0
                ),
              ),
              SizedBox(width: 20.0,),
              Icon(Icons.favorite , color: Colors.black54),
            ],
        ),
      ),
    );
  }
}

