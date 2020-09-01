import 'package:flutter/material.dart';
import 'package:gogobus10/utils/busn.dart';
import 'package:percent_indicator/percent_indicator.dart';

//fourth page with details of particular bus
class busDetail extends StatelessWidget {
  bus _bus;
  busDetail(this._bus);
  var _perc;
  @override
  Widget build(BuildContext context) {
    this._perc=double.parse(this._bus.crowd.substring(0,1))/10;
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
                              'Arrival : ' + this._bus.aTime,
                              style: TextStyle(
                                  color: Colors.indigo, fontSize: 20.0),
                              textScaleFactor: 1.5,
                            ),
                            Container(
                              height: 50.0,
                            ),
                            Text(
                              'Reach : ' + this._bus.rTime,
                              style: TextStyle(
                                  color: Colors.indigo, fontSize: 20.0),
                              textScaleFactor: 1.5,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,),
            
                              child:  CircularPercentIndicator(
                                radius: 140.0,
                                animation: true,
                                lineWidth: 15.0,
                                //fillColor: Colors.grey,
                                
                                percent: this._perc,
                                center: Text(
                                  "Occupancy",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.indigo),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                backgroundColor: Colors.grey[200],
                                progressColor: Colors.blueAccent,
                              )
                            ),
                  
                          ]
                        ),
                      ),
                    ),
              

                  ],
                )
              )
            )          
    );
  }

  void moveToLastScreen(BuildContext context) {
    Navigator.pop(context);
  }
/*
  double _progress() {
    String subCrowd = this._bus.crowd.substring(0, 1);
    double progress = double.parse(subCrowd) / 10.0;
    return progress;
  }
  */
}
