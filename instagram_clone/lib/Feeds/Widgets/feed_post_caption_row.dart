import 'package:flutter/material.dart';
import 'package:instagram_clone/Feeds/Models/feed.dart';

class FeedPostCaptionRow extends StatelessWidget {
  const FeedPostCaptionRow({super.key, required this.feed});
  final Feed feed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          feed.user.username,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '${feed.caption}',
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
