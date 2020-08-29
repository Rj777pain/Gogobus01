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
      body: Center(
        child: Card(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      this._bus.title,
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                      textScaleFactor: 1.5,
                    ),
                    Container(
                      height: 50.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 300.00,
                      height: 300.00,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                            ),
                            Text(
                              'Arrival time : ' + this._bus.aTime,
                              style: TextStyle(
                                  color: Colors.indigo, fontSize: 20.0),
                              textScaleFactor: 1.5,
                            ),
                            Container(
                              height: 50.0,
                            ),
                            Text(
                              'Reach time : ' + this._bus.rTime,
                              style: TextStyle(
                                  color: Colors.indigo, fontSize: 20.0),
                              textScaleFactor: 1.5,
                            ),
                            Container(
                              height: 50.0,
                            ),
                            Row(children: <Widget>[
                             Container(
                                margin: EdgeInsets.symmetric(horizontal: 3),
                                child: Text('Crowd :',//+ this._bus.crowd,
                                  style: TextStyle(
                                      color: Colors.indigo, fontSize: 20.0),
                                      textScaleFactor: 1.5,
                             )),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  width: 100,
                                  child: LinearProgressIndicator(
                                    minHeight: 6,
                                    value: _progress(),
                                  ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    )
                  ],
                ))),
      ),
    );
  }

  void moveToLastScreen(BuildContext context) {
    Navigator.pop(context);
  }

  double _progress() {
    String subCrowd = this._bus.crowd.substring(0,1);
    double progress = double.parse(subCrowd) / 10.0;
    return progress;
  }
}
