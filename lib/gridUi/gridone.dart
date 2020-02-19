import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:project_trip_app/model/room_types.dart';

class GridOne extends StatefulWidget {
  @override
  _GridOneState createState() => _GridOneState();
}

class _GridOneState extends State<GridOne> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Coming soon",style: TextStyle(fontSize: 18),)
            ],
          ),
        ),
      ),
//      body: GridView.count(
//        crossAxisCount: 3,
//        children: List.generate(51, (index){
//
//          return Card(
//            elevation: 10.0,
//            margin: EdgeInsets.all(7.0),
//            shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(20.0)
//            ),
//            child: Container(
//
//            child: Align(
//              alignment: Alignment.center,
//              child: Text("$index",
//              style: TextStyle(
//                fontSize: 24.0
//              ),),
//            ),
//          )
//          );
//        })
//      ),
    );
  }
}

