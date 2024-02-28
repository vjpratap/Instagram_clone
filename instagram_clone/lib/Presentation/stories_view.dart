import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_clone/Models/user.dart';

class StoryView extends StatefulWidget {
  StoryView({required this.stories, super.key});

  List<User> stories;

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50.0,
              ),
            );
          }),
    );
  }
}
