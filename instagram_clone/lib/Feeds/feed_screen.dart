import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/Feeds/Models/feed.dart';
import 'package:instagram_clone/Feeds/controllers/home_controller.dart';
import 'package:instagram_clone/Feeds/Widgets/feed_post.dart';
import 'package:instagram_clone/Stories/stories_view.dart';
import 'package:instagram_clone/Stories/bloc/insta_story_events.dart';
import 'package:instagram_clone/Stories/bloc/insta_story_bloc.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final HomeController _controller = Get.put(HomeController());

  Widget loadData(HomeController controller) {
  List<Feed> feeds;
  switch (controller.state.runtimeType) {
    case FeedLoadingState:
      return const Center(
        child: CircularProgressIndicator(),
      );
    case FeedSuccessState:
      feeds = (controller.state as FeedSuccessState).feeds;
      return Expanded(
        child: ListView.builder(
          itemCount: feeds.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: FeedPost(feed: feeds[index]),
            );
          },
        ),
      );
    case FeedFailureState:
      return const Center(child: Icon(Icons.error));
    default:
      return Container(); // Handle any other cases or return an empty container
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Row(
        children: [
          const SizedBox(width: 4),
          Text(
            'Instagram',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    ),
    body: GetBuilder<HomeController>(
      init: _controller,
      builder: (controller) {
        return Column(
          children: [
            BlocProvider(
              create: (context) => InstaStoryBloc()..add(LoadInstaStories()),
              child: const StoryView(),
            ),
            loadData(controller),
          ],
        );
      },
    ),
  );
}

}