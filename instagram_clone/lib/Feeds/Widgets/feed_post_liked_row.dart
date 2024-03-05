import 'package:flutter/material.dart';
import 'package:instagram_clone/Feeds/Models/feed.dart';

class FeedPostLikedRow extends StatelessWidget {
  const FeedPostLikedRow({super.key, required this.feed});
  final Feed feed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              right: 7, // Adjust the left position as needed
              child: ClipOval(
                child: Image.network(
                  feed.likes.data.first.profilePicture,
                  width: 15,
                  height: 15,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ClipOval(
              child: Image.network(
                feed.likes.data[1].profilePicture,
                width: 15,
                height: 15,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: RichText(
            text: TextSpan(
                text: 'Liked by ',
                style: Theme.of(context).textTheme.bodySmall,
                children: [
                  TextSpan(
                      text: '${feed.likes.data.first.username} ',
                      style: Theme.of(context).textTheme.headlineLarge),
                  TextSpan(
                    text: 'and ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: '${feed.likes.count} others',
                    style: Theme.of(context).textTheme.headlineLarge,
                  )
                ]),
          ),
        )
      ],
    );
  }
}
