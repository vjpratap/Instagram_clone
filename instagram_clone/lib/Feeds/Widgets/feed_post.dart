import 'package:flutter/material.dart';
import 'package:instagram_clone/Feeds/Widgets/feed_post_caption_row.dart';
import 'package:instagram_clone/Feeds/Widgets/feed_post_card_view.dart';
import 'package:instagram_clone/Feeds/Widgets/feed_post_created_time_row.dart';
import 'package:instagram_clone/Feeds/Widgets/feed_post_icons_row.dart';
import 'package:instagram_clone/Feeds/Widgets/feed_post_liked_row.dart';
import 'package:instagram_clone/Feeds/Widgets/feed_post_title_row.dart';
import 'package:instagram_clone/Feeds/Models/feed.dart';

class FeedPost extends StatelessWidget {
  const FeedPost({super.key, required this.feed});
  final Feed feed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: FeedPostTitleRow(feed: feed)
        ),
        const SizedBox(
          height: 8,
        ),
        FeedPostCardView(feed: feed),
        const SizedBox(height: 8.0),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: FeedPostIconsRow(feed: feed)
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: FeedPostLikedRow(feed: feed)
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child:FeedPostCaptionRow(feed: feed)
        ),
        const SizedBox(
          width: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: FeedPostCreatedTimeRow(feed: feed)
        )
      ],
    );
  }
}
