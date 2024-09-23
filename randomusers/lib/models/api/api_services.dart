import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:randomusers/models/user/users_model.dart';

class ApiServices {
  Future<dynamic> get getUsers async => await _getUsers();

  Future<dynamic> _getUsers() async {
    final Uri url = Uri.parse("https://randomuser.me/api/?results=100");
    try {
      final http.Response response = await http.get(url);
      debugPrint("API Response: ${response.body}"); // Print the raw response

      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        if (data['results'] != null) {
          List<dynamic> results = data['results'];
          return results.map((user) => UsersModel.fromJson(user)).toList();
        } else {
          return []; // Handle case when results are null
        }
      } else {
        return "Error: ${response.statusCode}"; // Handle non-200 responses
      }
    } catch (e) {
      debugPrint("Error fetching users: $e"); // Print error for debugging
      return []; // Return empty list on error
    }
  }
}
