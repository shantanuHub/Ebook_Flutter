import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(playBook());

class playBook extends StatefulWidget {

  final String assImg;
  final String title , author;

  playBook({this.assImg , this.title , this.author});

  @override
  _playBookState createState() => _playBookState();
}

class _playBookState extends State<playBook> with SingleTickerProviderStateMixin{

  double _values = 0.0;

  void _onChange(double value)
  {
    setState(() {
      _values = value;
    });
  }

  AnimationController animationController;
  bool isPlaying = false;

  @override
  void initState() {
        super.initState();
        animationController = AnimationController(vsync: this , duration: Duration(milliseconds: 300));
  }
  void _handleOnpress()
  {
    isPlaying = !isPlaying;

    isPlaying ? animationController.reverse() : animationController.forward();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0 , right: 10.0 , top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                      onTap: (){Navigator.of(context).pop();},
                      child: Icon(Icons.arrow_back_ios , color: Colors.black,)),

                  Text("Playing Now" ,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0,
                    ),
                  ),

                  Icon(Icons.more_vert, color: Colors.black,),
                ],
              ),
            ),
          ),

          SizedBox(height: 80.0,),

          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),

              child:  Container(
                height: 280.0,
                width: 220,
            child: Image.asset(widget.assImg , fit:  BoxFit.cover,)),
            ),

          SizedBox(height: 20.0,),

          Text(
           widget.author ,
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
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 25.0,
            ),
          ),


          Padding(
            padding: EdgeInsets.only(left: 20.0 , right: 20.0),
            child: Slider(
              activeColor: Colors.orange,
              inactiveColor: Colors.grey,
              value: _values,
              onChanged: _onChange
            ),
          ),

          Text(
            "10:00",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Icon(Icons.fast_rewind  , color: Colors.black, size: 35.0,),

              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 35.0,
                child: IconButton(
                  alignment: Alignment.center,
                  iconSize: 40.0,
                  icon: AnimatedIcon(
                    icon: AnimatedIcons.play_pause,
                    progress: animationController,
                    size: 40,
                  color: Colors.white),
                  onPressed: ()
                  {
                  _handleOnpress();
                  },
                ),
              ),

              Icon(Icons.fast_forward  , color: Colors.black, size: 35.0,),

            ],
          )
           ]
          ),

    );


  }
}
