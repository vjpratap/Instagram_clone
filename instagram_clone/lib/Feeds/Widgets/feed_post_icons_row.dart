import 'package:flutter/material.dart';
import 'package:instagram_clone/Feeds/Models/feed.dart';

class FeedPostIconsRow extends StatelessWidget {
  const FeedPostIconsRow({super.key, required this.feed});
  final Feed feed;
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.favorite_outline),
        SizedBox(width: 16),
        Icon(Icons.comment_outlined),
        SizedBox(width: 16),
        Icon(Icons.share),
        Spacer(),
        Icon(Icons.bookmark_outline)
      ],
    );
  }
}
