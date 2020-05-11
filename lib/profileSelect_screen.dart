import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:api_demo/main.dart';

class DriverMixin with Thing {
  @override
  List<String> get labels => ['This', 'is', 'Driver'];
  @override
  void doAthing(String thing) {
    print('driver thing');
  }
}

class ProfileWidget extends StatelessWidget {
  void _onPassengerPressed() {
    Modular.to.pushNamed('/login');
  }

    void _onDriverPressed() {
    Modular.to.pushNamed('/login');
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