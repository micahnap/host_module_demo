import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'profileSelect_screen.dart';
import 'package:api_demo/main.dart';

void main() => runApp(ModularApp(module: AppModule()));

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router("/login/:channelId", child: (_, args) => LoginScreen(channelId: args.params['channelId'])),
  ];
  @override
  Widget get bootstrap => ProfileWidget();
}