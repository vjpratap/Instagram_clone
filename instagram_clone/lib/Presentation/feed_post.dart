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
        const SizedBox(height: 8.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Icon(Icons.heart_broken),
              SizedBox(width: 16),
              Icon(Icons.comment),
              SizedBox(width: 16),
              Icon(Icons.share)
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
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
                        style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
                      ),
                      TextSpan(
                        text: 'and ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: '${feed.likes.count} others',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      )
                    ]
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
