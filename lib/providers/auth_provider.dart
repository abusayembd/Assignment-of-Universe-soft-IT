// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  bool isLoading = false;
  bool hasError = false;
  String? errorMessage;
  int selectedTabIndex = 0;

  Future<bool> login(String username, String password) async {
    isLoading = true;
    hasError = false;

    notifyListeners();
    http.Response response = await http.post(
        Uri.parse("https://reqres.in/api/login"),
        body: {"email": username, "password": password});
    if (response.statusCode == 200) {
      print(response.body);
      return true;
    } else {
      print("Login Failed");
      hasError = true;
      errorMessage = "Failed to login";
      notifyListeners();
    }
    isLoading = false;
    notifyListeners();
    return false;
  }

  void changeCategory(int index) {
    selectedTabIndex = index;
    notifyListeners();
  }

  void loadAllUsers() async {
    http.Response res =
        await http.get(Uri.parse("https://reqres.in/api/users"));
    if (res.statusCode == 200) {
      List allUsers = jsonDecode(res.body);
      print(res.body);
    } else {
      print("error");
    }
    notifyListeners();
  }
}
