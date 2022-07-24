import 'package:flutter/cupertino.dart';

class User with ChangeNotifier {
  String _username = '';
  String get username => _username;
  set username(String username) {
    _username = username;
    notifyListeners();
  }
}
