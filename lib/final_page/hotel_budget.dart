import 'package:flutter/material.dart';
import 'package:project_trip_app/final_page/final_page.dart';
import 'package:project_trip_app/model/hotel_model.dart';

class HotelBudgetView extends StatelessWidget {


  final Hotel hotel;
  HotelBudgetView({Key key, @required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/five.jpg'),
        fit: BoxFit.cover
    ) ,
    ),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Finish"),
                  Text("Location ${hotel.title}"),
                  Text("Start Date ${hotel.startDate}"),
                  Text("End Date ${hotel.endDate}"),

                  RaisedButton(
                    child: Text("Finish"),
                    onPressed: () async {
                      // save data to fiebase
//                    await db.collection("trips").add(hotel.toJson());

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => finalPage()
                      ));
                    },
                  ),
                ],
              )
          ),
        )
    );
  }
}
