import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Feeds/Models/user.dart';
import 'package:instagram_clone/Utility/url.dart';
import 'package:dio/dio.dart';

final dio = Dio();

class UserRepository {
  Future<List<User>> getUsers() async {
    try {
      final response = await dio.get(URL.discoverPeople);
      if (response.statusCode == 200) {
        List<User> users =
            response.data.map<User>((json) => User.fromJson(json)).toList();
        return users;
      } else {
        throw Exception('Failed to fetch users');
      }
    } catch (e) {
      debugPrint('Exception occured');
      rethrow;
    }
  }
}
