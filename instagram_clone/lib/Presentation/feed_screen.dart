import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/Controllers/home_controller.dart';
import 'package:instagram_clone/Presentation/feed_post.dart';

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
          return ListView.builder(
              itemCount: controller.feedList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FeedPost(feed: controller.feedList[index]),
                );
              });
        },
      ) ,
    );
  }
}