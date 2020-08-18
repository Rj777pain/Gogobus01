import 'package:flutter/material.dart';
import 'package:gogobus10/screens/bus_detail.dart';

class busList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bus List",
          textScaleFactor: 1.2,
          style: textStyle,
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          moveToLastScreen(context);
        }),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20.0,bottom: 10.0),
          child:Container(color: Colors.white,child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.indigo,
              child:Icon(Icons.directions_bus),),
            title: Text("St Jos Travels", style: TextStyle(color: Colors.indigo, fontSize: 20.0),),
            subtitle: Text("7.15 AM", style: TextStyle(color: Colors.blueAccent),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return busDetail();
              }));
            },
          ),),),

          Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
            child:Container(color: Colors.white,child:  ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                child:Icon(Icons.directions_bus),),
              title: Text("Jesus Travels", style: TextStyle(color: Colors.indigo, fontSize: 20.0),),
              subtitle: Text("7.25 AM",style: TextStyle(color: Colors.blueAccent),),
            ),)),

          Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
            child: Container(color: Colors.white,child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                child:Icon(Icons.directions_bus),),
              title: Text("Suma Travels", style: TextStyle(color: Colors.indigo, fontSize: 20.0),),
              subtitle: Text("7.40 AM",style: TextStyle(color: Colors.blueAccent),),
            ),),),

          Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
            child:Container(color: Colors.white,child:  ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                child:Icon(Icons.directions_bus),),
              title: Text("KSRTC", style: TextStyle(color: Colors.indigo, fontSize: 20.0),),
              subtitle: Text("8.00 AM",style: TextStyle(color: Colors.blueAccent),),
            ),),),
        ],
      ),
    );
  }

  void moveToLastScreen(BuildContext context){
    Navigator.pop(context);
  }
}
