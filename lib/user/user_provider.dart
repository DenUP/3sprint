import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:network/entity/user.dart';
import 'package:network/network.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends ChangeNotifier {
  User? _user;
  User? get user => _user;
  final Network network;

  UserProvider({required this.network});

  Future<void> setUser(User user, String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
    prefs.setString('user', jsonEncode(user.toJson()));
    _user = user;
    notifyListeners();
  }

  Future<void> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    final userjson = prefs.getString('user');
    if (userjson != null && token != null) {
      final user = User.fromJson(jsonDecode(userjson) as Map<String, dynamic>);
      _user = user;
      notifyListeners();
    }

    notifyListeners();
  }
}
