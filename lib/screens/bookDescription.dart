import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Description());

class Description extends StatelessWidget {

  String img;
  String auther ;
  String title;

  Description({this.img , this.auther , this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: GestureDetector(
              onTap: ()
              {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.clear,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          ),
          SizedBox(
            height: 140.0,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Container(
                  height: 300.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 2.0)
                      ]),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Positioned(
                        left: MediaQuery.of(context).size.width / 3,
                        top: -40.0,
                        child: Container(
                          width: 120.0,
                          height: 180.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(img)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 0.5, color: Colors.black54),
                              ]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 150.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              auther,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              title,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 25.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Divider(height: 1.0),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 20.0, left: 20.0, right: 20.0),
                              height: 60.0,

                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Spacer(),
                                    DescBook('Condition' , '4.0'),
                                   Spacer(),
                                    DescBook("Pages"  , ' 385'),
                                    Spacer(),
                                    DescBook('Cover' , 'Hard'),
                                    Spacer(),
                                    DescBook('Language' , 'English'),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 10.0,),
                            Text(
                              'Description',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 20.0,
                              ),
                            ),

                            SizedBox(height: 5.0,),

                            Text(
                              'The story begins in 1962. On a rocky patch of the sun-drenched Italian coastline, a young innkeeper, chest-deep in daydreams, looks out over the incandescent waters of the Ligurian Sea and spies an apparition: a tall, thin woman, a vision in white, approaching him on a boat. She is an actress, he soon learns, an American starlet, and she is dying.',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Column DescBook(String title   , String detail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 15.0, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          detail,
          style: TextStyle(fontSize: 16.0, color: Colors.black54 , fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
