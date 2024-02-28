import 'package:flutter/material.dart';
import 'package:instagram_clone/Models/feed.dart';

class FeedPost extends StatelessWidget {
  const FeedPost({super.key, required this.feed});

  final Feed feed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(feed.user.profilePicture),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(feed.user.username)
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Card(
          elevation: 4,
          child: Image.network(
            feed.images.standardResolution.url,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
