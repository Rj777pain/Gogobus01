import 'package:flutter/material.dart';
import 'package:gogobus10/screens/bus_detail.dart';
import 'package:gogobus10/utils/busn.dart';
//third page with list of available buses

class busList extends StatelessWidget {

  int count=0;
  List<bus> buslt;
  @override
  Widget build(BuildContext context) {
    buslt=togetList();
    count=buslt.length;
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
      body: ListView.builder(//list of buses
        itemCount: count,
        itemBuilder: (BuildContext context, int position){
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  child:Icon(Icons.directions_bus),),
                title: Text(this.buslt[position].title, style: TextStyle(color: Colors.indigo, fontSize: 20.0),),
                subtitle: Text(this.buslt[position].aTime, style: TextStyle(color: Colors.blueAccent),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return busDetail(this.buslt[position]);//to next page
                  }));
                },
              ),),

          );
        },
      ),
    );
  }
//list of details of bus 
  List<bus> togetList(){
    List<bus> busL=List<bus>();
    busL.add(bus("St Jos Travels",'7.20 AM','7.35 AM',"75%"));
    busL.add(bus("Jesus Travels",'7.30 AM','7.50 AM',"95% Flmost full"));
    busL.add(bus("Suma Travels",'7.35 AM','8.00 AM',"20%"));
    busL.add(bus("KSRTC",'7.50 AM','8.10 AM',"0%"));
    return busL;
  }

  //navigate to next screen
  void moveToLastScreen(BuildContext context){
    Navigator.pop(context);
  }

}
