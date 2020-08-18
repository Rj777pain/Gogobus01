import 'package:flutter/material.dart';
import 'package:gogobus10/screens/bus_list.dart';

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
          child: Column(
            children: <Widget>[
              getImage(),
              Expanded(
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
                      })),
            ],
          ),
          margin: EdgeInsets.all(5.0),
        ),
      ),
    );
  }

  Widget getImage() {
    AssetImage assetImage = AssetImage('images/map.jpg');
    Image image = Image(
      image: assetImage,
      height: 550.0,
      width: 370.0,
    );
    return Center(child: image);
  }

  void moveToLastScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
