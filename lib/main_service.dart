import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class MainService {
  Future<void> loadLoginModule(String channelId);
}

class ProfileSelectionService extends MainService {
  @override
  Future<void> loadLoginModule(String channelId) {
    // TODO: implement loadLoginModule
    Modular.to.pushNamed('/login/${channelId}');
  }
}