import 'package:flutter/material.dart';
import 'package:instagram_clone/Feeds/Models/feed.dart';

class FeedPostTitleRow extends StatelessWidget {
  const FeedPostTitleRow({super.key, required this.feed});
  final Feed feed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15.0,
          backgroundImage: NetworkImage(feed.user.profilePicture),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          feed.user.username,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
