import 'package:flutter_modular/flutter_modular.dart';

abstract class MainService {
  void getBindings() => [];
}

class ProfileSelectionService extends MainService {
  @override
  Future<void> loadLoginModule(String channelId) {
    // TODO: implement loadLoginModule
    Modular.to.pushNamed('/login/${channelId}');
  }
}