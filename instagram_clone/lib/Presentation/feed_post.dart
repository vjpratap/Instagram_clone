import 'package:flutter/material.dart';

class FeedPost extends StatelessWidget {
  const FeedPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15.0, // Set the radius to define the size of the circle
                backgroundImage: NetworkImage(
                    'https://fastly.picsum.photos/id/27/3264/1836.jpg?hmac=p3BVIgKKQpHhfGRRCbsi2MCAzw8mWBCayBsKxxtWO8g'), // Provide your image asset
              ),
              SizedBox(
                width: 8,
              ),
              Text("Ankur Jain")
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
