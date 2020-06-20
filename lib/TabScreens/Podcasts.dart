import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(Podcasts());

class Podcasts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 15.0 , right: 15.0 ,top: 15.0 , bottom:  20),
          child: ListView(
            children: <Widget>[
              buyBoxes(title: 'Lore Dreadful Palace' , img: 'assets/book1.jpg' , author: 'Aaron Mah'),
              SizedBox(height: 8.0,),
              buyBoxes(title: 'Pinterests' , img: 'assets/book2.jpg' , author: 'Michel Rogan'),
              SizedBox(height: 8.0,),
              buyBoxes(title: 'Beautiful Ruins' , img: 'assets/book3.jpg' , author: 'Jess Walter'),
              SizedBox(height: 8.0,),
              buyBoxes(title: 'See You In Piazza' , img: 'assets/book4.jpg' , author: 'Frances Mayer'),
            ],
          )
        ),
      ),
    );


  }

  Container buyBoxes( {String title , String img , String author}) {
    return Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0 , top: 20.0),
          height: 175,
          width: 380,
          decoration: BoxDecoration
            (color: Colors.white70,
            borderRadius: BorderRadius.circular(15.0),

          ),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Image(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),

                SizedBox(width: 18.0,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(title ,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                          color: Colors.black87
                      ),
                    ),
                    SizedBox(height: 5.0,),

                    Text(author ,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17.0,
                          color: Colors.black87
                      ),
                    ),

                    SizedBox(height: 5.0,),

                    FlutterRatingBar(
                      initialRating: 4,
                      itemSize: 32.0,
                      fillColor: Colors.amber,
                      borderColor: Colors.black12,
                      allowHalfRating: true,
                      onRatingUpdate: (rating){
                        print(rating);
                      },

                    ),

                    RaisedButton(
                      onPressed: (){},
                      color: Colors.blue,
                      elevation: 2,
                      textColor: Colors.white,
                      child: Text('Buy'),

                    )
                  ],
                )

              ],
            ),
          ),

        );
  }
}
