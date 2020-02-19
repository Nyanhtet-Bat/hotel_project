import 'package:flutter/material.dart';
import 'package:project_trip_app/booking_calendar/date_range_picker.dart';
import 'package:project_trip_app/model/floor_room.dart';
import 'package:project_trip_app/model/hotel_model.dart';
import 'package:project_trip_app/model/room_types.dart';

class HotelDetails extends StatelessWidget {
  final RoomTypes roomTypes;


  HotelDetails(this.roomTypes);

  bodyWidget(BuildContext context) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            ),
            Image.network(roomTypes.image, fit: BoxFit.cover),
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    roomTypes.roomName,
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Text(
                          "8.4/10 reviews",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.all(16.0),
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
//                                Expanded(
//                                  child: Column(
//                                    children: <Widget>[
//                                      Row(
//                                        children: <Widget>[
//                                          Icon(
//                                            Icons.star,
//                                            color: Colors.yellow,
//                                          ),
//                                          Icon(
//                                            Icons.star,
//                                            color: Colors.yellow,
//                                          ),
//                                          Icon(
//                                            Icons.star,
//                                            color: Colors.yellow,
//                                          ),
//                                          Icon(
//                                            Icons.star,
//                                            color: Colors.yellow,
//                                          ),
//                                          Icon(
//                                            Icons.star_border,
//                                            color: Colors.yellow,
//                                          ),
//                                        ],
//                                      )
//                                    ],
//                                  ),
//                                ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "${roomTypes.price}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "/per night",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: RaisedButton(
                              color: Colors.purple,
                              textColor: Colors.white,
                              child: Text("Book Now"),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 32.0),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HotelDateView(
                                              hotel: Hotel(
                                                  "", null, null, null, ""),
                                            )));
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text("Description".toUpperCase(),
                              style: TextStyle(color: Colors.white)),
                          Text("${roomTypes.description}",
                              style: TextStyle(color: Colors.white)),
                          Text(""),
                          Text("Facility".toUpperCase(),
                              style: TextStyle(color: Colors.white)),
                          Text("${roomTypes.facilityName}",
                              style: TextStyle(color: Colors.white)),
                          Text(""),
                          Text("Total Room".toUpperCase(),
                              style: TextStyle(color: Colors.white)),
                          Text("${roomTypes.totalRoom}",
                              style: TextStyle(color: Colors.white)),
                          Text(""),
                          Text("Floors".toUpperCase(),
                              style: TextStyle(color: Colors.white)),
//                          Text("${floors.floorNo} (${floors.floorName})}",
//                              style: TextStyle(color: Colors.white)),
                          Text(""),
                          Text("Update".toUpperCase(),
                              style: TextStyle(color: Colors.white)),
                          Text("${roomTypes.updatedAt}",
                              style: TextStyle(color: Colors.white)),
                          Text(""),
                        ],
                      ))
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
//                child: BottomNavigationBar(
//                  backgroundColor: Colors.black,
//                  items: [
//                    BottomNavigationBarItem(
//                        icon: Icon(Icons.search, color: Colors.white,), title: Text("Search",style: TextStyle(color: Colors.white),),),
//                    BottomNavigationBarItem(
//                        icon: Icon(Icons.favorite, color: Colors.white), title: Text("Favourite",style: TextStyle(color: Colors.white),)),
//                    BottomNavigationBarItem(
//                        icon: Icon(Icons.settings, color: Colors.white), title: Text("Settings",style: TextStyle(color: Colors.white),)),
//                  ],
//                ),
            ),
          ]),
        ),
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: bodyWidget(context),
    );
  }
}
