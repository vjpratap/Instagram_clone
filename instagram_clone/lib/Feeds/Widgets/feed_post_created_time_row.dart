import 'package:flutter/material.dart';
import 'package:instagram_clone/Feeds/feed.dart';
import 'package:intl/intl.dart';

class FeedPostCreatedTimeRow extends StatelessWidget {
  const FeedPostCreatedTimeRow({super.key, required this.feed});
  final Feed feed;

  String _getCreatedTime() {
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(int.parse(feed.createdTime) * 1000);
    String formattedDate = DateFormat('dd MMMM', 'en_US').format(dateTime);
    return formattedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          _getCreatedTime(),
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.black38),
        ),
        const Spacer()
      ],
    );
  }
}
