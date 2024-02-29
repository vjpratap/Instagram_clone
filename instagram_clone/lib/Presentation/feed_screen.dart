import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/Controllers/home_controller.dart';
import 'package:instagram_clone/Presentation/feed_post.dart';
import 'package:instagram_clone/Presentation/stories_view.dart';
import 'package:instagram_clone/bloc/insta_story_bloc/insta_story_events.dart';
import 'package:instagram_clone/bloc/insta_story_bloc/insta_story_bloc.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final HomeController _controller = Get.put(HomeController());

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
              Expanded(
                child: ListView.builder(
                    itemCount: controller.feedList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FeedPost(feed: controller.feedList[index]),
                      );
                    }),
              )
            ],
          );
        },
      ),
    );
  }
}
