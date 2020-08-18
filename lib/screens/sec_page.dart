import 'package:flutter/material.dart';
import 'package:gogobus10/screens/bus_list.dart';
//second page which contain maps chosing nearest bus stop
class secPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Select Nearby Stop",
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
      body: Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/map.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Container(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
              color: Theme.of(context).accentColor,
              textColor: Colors.black,
              child: Text(
                'Next',
                textScaleFactor: 1.5,
              ),
              elevation: 6.0,
              onPressed: () {
                debugPrint("Next clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return busList();
                }));
              })),),



        ),
      );

  }


  void moveToLastScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
