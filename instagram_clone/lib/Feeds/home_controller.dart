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

abstract class FeedScreenState{}

class FeedLoadingState extends FeedScreenState {}
class FeedSuccessState extends FeedScreenState {
  final List<Feed> feeds;
  FeedSuccessState(this.feeds);
}
class FeedFailureState extends FeedScreenState {}

class HomeController extends GetxController {
 FeedScreenState state = FeedLoadingState();
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
        state = FeedSuccessState(feeds);
      } else {
        state = FeedFailureState();
      }
    } catch (e) {
        state = FeedFailureState();
    }
    update();
  }
}
