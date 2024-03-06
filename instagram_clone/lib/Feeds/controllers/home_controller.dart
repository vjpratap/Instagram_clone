import 'package:get/get.dart';
import 'package:instagram_clone/Feeds/Models/feed.dart';
import 'package:instagram_clone/Utility/url.dart';
import 'package:dio/dio.dart';

sealed class FeedScreenState {}

final dio = Dio();

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
      final response = await dio.get(URL.feedURL);
      if (response.statusCode == 200) {
        List<Feed> feeds =
            response.data.map<Feed>((data) => Feed.fromJson(data)).toList();
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
