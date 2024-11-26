import 'dart:convert';

import 'package:api_widget_test_app/user_model.dart';
import 'package:http/http.dart' as http;


class UserRepository {
  Future<List<User>> fetchUsers() async {
    final response = await http.get(
      Uri.parse(
        'https://jsonplaceholder.typicode.com/users',
      ),
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch users');
    }
  }
}