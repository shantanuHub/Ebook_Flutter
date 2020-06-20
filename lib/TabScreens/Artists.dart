import 'package:flutter/material.dart';
import 'package:mybookapp/screens/bookDescription.dart';

void main() => runApp(Artists());

class Artists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 15.0 , top: 10.0 , right: 15.0),
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Padding(
                      padding: EdgeInsets.only(left: 10.0 , top: 10.0),
                      child: Text("BookShelf" , style: TextStyle(color: Colors.black ,fontSize:  22.0 ,fontWeight: FontWeight.w400),),),

                  SizedBox(height: 5.0,),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0 , top: 20.0 , right:  20.0 , bottom: 20.0 ),
                        child: ListView(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    bookCards(assetImg: 'assets/book1.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)
                                            {
                                              return Description(title: "Lore Dreadful Palace", auther: "Aaron Mahnke" , img: "assets/book1.jpg");
                                            }
                                      ));
                                    }),
                                    SizedBox(width: 18.0),
                                    bookCards(assetImg: 'assets/book2.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "Pinterest", auther: "Michel Gogan" , img: "assets/book2.jpg");
                                          }
                                      ));
                                    }),
                                    SizedBox(width: 18.0),
                                    bookCards(assetImg: 'assets/book3.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "Bueautiful Ruins", auther: "Jess Walter" , img: "assets/book3.jpg");
                                          }
                                      ));
                                    }),
                                  ],
                                ),
                                SizedBox(height: 18.0,),
                                Row(
                                  children: <Widget>[
                                    bookCards(assetImg: 'assets/book4.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "See You In The Piazza", auther: "Frances Mayes" , img: "assets/book4.jpg");
                                          }
                                      ));
                                    }),
                                    SizedBox(width: 18.0),
                                    bookCards(assetImg: 'assets/book5.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "Dont let him know", auther: "Sandp Roy" , img: "assets/book5.jpg");
                                          }
                                      ));
                                    }),
                                    SizedBox(width: 18.0),
                                    bookCards(assetImg: 'assets/book6.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "Gentleman In Moscow", auther: "Amor Towless" , img: "assets/book6.jpg");
                                          }
                                      ));
                                    }),
                                  ],
                                ),
                                SizedBox(height: 18.0,),
                                Row(
                                  children: <Widget>[
                                    bookCards(assetImg: 'assets/book7.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "How to Write book", auther: "Stefain Newell" , img: "assets/book7.jpg");
                                          }
                                      ));
                                    }),
                                    SizedBox(width: 18.0),
                                    bookCards(assetImg: 'assets/book8.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "Baby Doll", auther: "Hollie craw" , img: "assets/book8.jpg");
                                          }
                                      ));
                                    }),
                                    SizedBox(width: 18.0),
                                    bookCards(assetImg: 'assets/book9.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "Daddy Darkest", auther: "Ellery Kane" , img: "assets/book9.jpg");
                                          }
                                      ));
                                    }),
                                  ],
                                ),
                                SizedBox(height: 18.0,),
                                Row(
                                  children: <Widget>[
                                    bookCards(assetImg: 'assets/book10.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "Her Sister Lie", auther: "Debbie Howells" , img: "assets/book10.jpg");
                                          }
                                      ));
                                    }),
                                    SizedBox(width: 18.0),
                                    bookCards(assetImg: 'assets/bookimage1.jpg' ,onPress: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)
                                          {
                                            return Description(title: "World War Z", auther: "Max Brooks" , img: "assets/bookimage1.jpg");
                                          }
                                      ));
                                    }),
                                    SizedBox(width: 18.0),

                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
          ),
        ),
    );
  }

  Widget bookCards( {String assetImg , Function onPress}) {


    return GestureDetector(
      onTap: onPress,
      child: Container(
                  width: 100.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Image.asset(assetImg , fit: BoxFit.cover),
                ),
    );
  }
}
