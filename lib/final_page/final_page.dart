import 'package:flutter/material.dart';

class finalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/five.jpg'), fit: BoxFit.cover),
          ),
          child: Card(
            color: Colors.white70,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Congractulations, your booking have been recorded",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  const SizedBox(height: 30),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: const Text('Go Back to Main Menu',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],

              ),
            ),
          )),
    );
  }
}

//Navigator.of(context).popUntil((route) => route.isFirst);
