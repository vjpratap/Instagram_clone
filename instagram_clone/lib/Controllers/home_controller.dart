import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:instagram_clone/Models/feed.dart';

class HomeController extends GetxController {
  RxList<Feed> feedList = <Feed>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse('http://localhost:3001/feed'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        List<Feed> feeds = jsonList.map((json) => Feed.fromJson(json)).toList();
        feedList.value = feeds;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}