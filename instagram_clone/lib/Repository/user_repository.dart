import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/user.dart';
import 'package:instagram_clone/Utility/url.dart';

class UserRepository {
  Future<List<User>> getUsers() async {
    try {
      final response = await http.get(Uri.parse(URL.discoverPeople));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        List<User> users = data.map((json) => User.fromJson(json)).toList();
        return users;
      } else {
        throw Exception('Failed to fetch users');
      }
    } catch (e) {
      print('Exception caught while fetching users: $e');
      rethrow;
    }
  }
}