import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:instagram_clone/Feeds/feed.dart';
import 'package:instagram_clone/Utility/url.dart';

class StatusWithValue {
  final FeedsState state;
  final List<Feed> feeds;

  StatusWithValue(this.state, this.feeds);
}

enum FeedsState {
  loading,
  success,
  failure,
}

class HomeController extends GetxController {
 StatusWithValue state = StatusWithValue(FeedsState.loading, []);
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(URL.feedURL));
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        List<Feed> feeds = jsonList.map((json) => Feed.fromJson(json)).toList();
        // feedList = feeds;
        state = StatusWithValue(FeedsState.success, feeds);
      } else {
        state = StatusWithValue(FeedsState.failure, []);
      }
    } catch (e) {
        state = StatusWithValue(FeedsState.failure, []);
    }
    update();
  }
}
