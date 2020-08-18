import 'package:flutter/material.dart';


class busDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
        appBar: AppBar(
        title: Text(
        "Bus Details",
        textScaleFactor: 1.2,
        style: textStyle,
    ),
    leading: IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () {
    //write some code to control yhings when user press back button
    moveToLastScreen(context);
    },
    )),
    body: Center( child: Container(
      padding: EdgeInsets.all(20.0),

      child: Column(
        children: <Widget>[
          Text("St Jos Travels", style: TextStyle(color: Colors.white, fontSize: 25.0),textScaleFactor: 1.5,),
          Container(height: 50.0,),
          Container(
            width: 300.00,
            height: 300.00,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(height: 50.0,),
                Text('Arrival time : 7.20 AM', style: TextStyle(color: Colors.indigo, fontSize: 20.0),textScaleFactor: 1.5,),

                Container(height: 50.0,),

                Text('Reach time : 7.45 AM', style: TextStyle(color: Colors.indigo, fontSize: 20.0),textScaleFactor: 1.5,),

                Container(height: 50.0,),

                Text('Crowd : 75%', style: TextStyle(color: Colors.indigo,fontSize: 20.0),textScaleFactor: 1.5,),


              ],
            ),
          )
        ],
      )
      ),
    ),
    );


  }
  void moveToLastScreen(BuildContext context){
    Navigator.pop(context);
  }
}