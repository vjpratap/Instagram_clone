import 'package:flutter/material.dart';
import 'package:instagram_clone/Feeds/Models/feed.dart';

class FeedPostCardView extends StatelessWidget {
  const FeedPostCardView({super.key, required this.feed});
  final Feed feed;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
