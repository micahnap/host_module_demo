import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'profileSelect_screen.dart';
import 'package:api_demo/main.dart';

void main() => runApp(ModularApp(module: HomeModule()));

class DriverMixin with Thing {
  @override
  List<String> get labels => ['This', 'is', 'Driver'];
  @override
  void doAthing(String thing) {
    print('driver thing');
  }
}

class HomeModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => DriverMixin()),
  ];

  @override
  List<Router> get routers => [
    Router("/login", module: LoginModule()),
  ];

  @override
  Widget get bootstrap => ProfileWidget();
}