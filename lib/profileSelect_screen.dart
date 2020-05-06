import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileWidget extends StatelessWidget {
  void _onPassengerPressed() {
    Modular.to.pushNamed('/login/passenger');
  }
    void _onDriverPressed() {
    Modular.to.pushNamed('/login/driver');
  }
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      // set your initial route
      navigatorKey: Modular.navigatorKey,
      initialRoute: "/",
      // add Modular to manage the routing system
      onGenerateRoute: Modular.generateRoute,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RaisedButton(
            onPressed: _onPassengerPressed,
            child: Text("Passenger")
         ),
      SizedBox(height: 40),
          RaisedButton(
            onPressed: _onDriverPressed,
            child: Text("Driver"),
      ),
        ],
      ),
      ),
    )
    );
  }
}