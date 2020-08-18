import 'package:flutter/material.dart';
import 'package:gogobus10/utils/busn.dart';
//fourth page with details of particular bus
class busDetail extends StatelessWidget {
  bus _bus;
  busDetail(this._bus);
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
    body: Center( child: Card(
      child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(this._bus.title, style: TextStyle(color: Colors.white, fontSize: 25.0),textScaleFactor: 1.5,),
          Container(height: 50.0,),
          Container(
            width: 300.00,
            height: 300.00,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(height: 50.0,),
                Text('Arrival time : '+this._bus.aTime, style: TextStyle(color: Colors.indigo, fontSize: 20.0),textScaleFactor: 1.5,),

                Container(height: 50.0,),

                Text('Reach time : '+this._bus.rTime, style: TextStyle(color: Colors.indigo, fontSize: 20.0),textScaleFactor: 1.5,),

                Container(height: 50.0,),

                Text('Crowd : '+this._bus.crowd, style: TextStyle(color: Colors.indigo,fontSize: 20.0),textScaleFactor: 1.5,),


              ],
            ),
          )
        ],
      ))
      ),
    ),
    );


  }
  void moveToLastScreen(BuildContext context){
    Navigator.pop(context);
  }
}