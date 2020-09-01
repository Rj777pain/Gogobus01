import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gogobus10/screens/sec_page.dart';

//First page with form
class mainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mainPageState();
  }
}

class mainPageState extends State<mainPage> {
  TextEditingController _sController = TextEditingController();
  TextEditingController _dController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GO GO BUS',
          style: textStyle,
          textScaleFactor: 1.5,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            getImage(),
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 30.0),
                child: TextField(
                  style: textStyle,
                  controller: _sController,
                  decoration: InputDecoration(
                      labelText: 'Starting Point',
                      labelStyle: textStyle,
                      hintText: 'Enter starting point e.g. GECT',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                )),
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 30.0),
                child: TextField(
                  style: textStyle,
                  controller: _dController,
                  decoration: InputDecoration(
                      labelText: 'Destination Point',
                      labelStyle: textStyle,
                      hintText: 'Enter destination point e.g. Vadakke Stand',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                )),
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                          color:  Theme.of(context).accentColor,
                          textColor: Colors.white,
                          child: Text(
                            'Start',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            debugPrint("Start clicked");
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return secPage();
                            }));
                          })),
                  Container(
                    width: 10.0,
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Reset',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          _reset();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _reset() {
    _dController.text = "";
    _sController.text = "";
  }

  Widget getImage() {
    AssetImage assetImage = AssetImage('images/bus1.jpeg');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(5.0),
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }

}
