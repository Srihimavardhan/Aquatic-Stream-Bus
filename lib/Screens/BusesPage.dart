// import 'HomeScreen.dart';
// import 'LoginPage.dart';
import 'package:aquatic_stream_bus/model/bus.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Buses_page extends StatelessWidget {
  List<Buses> li=[
    Buses(name: "Rjy", no:"10" ,des: 'hyd'),
    Buses(name: "Tpg", no:"10" ,des: 'vizag'),
    Buses(name: "Tanuku", no:"10" ,des: 'Rjy'),
    Buses(name: "Hyb", no:"10" ,des: 'bangaloru'),
      ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false, // hide the back arrow
        title: Row(
          children: [
            Icon(
              FontAwesomeIcons.bus,
              color: Colors.white,
            ),
            SizedBox(width: 8), // add some spacing between icon and text
            Text(
              'Aquatic Stream Bus',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 22, 239, 228),
        elevation: 0, // remove the shadow
      ),
      body: Container(
        child: ListView.builder(
          itemCount: li.length,
          itemBuilder:(context, index)=>
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
            child: ListTile(
              leading: Icon(Icons.directions_bus_filled),
              title: Text('Bus ${li[index].no}'),
              subtitle: Text("${li[index].name} --> ${li[index].des}."),
              
            ),
            
          )


        )
      ),
    );
  }
}
