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
                radius: 15.0, // Set the radius to define the size of the circle
                backgroundImage: NetworkImage(
                    feed.images.first.toString()), // Provide your image asset
              ),
              const SizedBox(
                width: 8,
              ),
              Text(feed.user.fullName)
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Card(
          elevation: 4, // Controls the size of the shadow below the card
          child: Image.network(
            'https://fastly.picsum.photos/id/17/2500/1667.jpg?hmac=HD-JrnNUZjFiP2UZQvWcKrgLoC_pc_ouUSWv8kHsJJY', // Replace with your image URL
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
