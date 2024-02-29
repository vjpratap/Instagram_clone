import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/bloc/insta_story_bloc.dart';
import 'package:instagram_clone/bloc/states/insta_story_state.dart'; // Import InstaStoryState

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InstaStoryBloc, InstaStoryState>(
      builder: (context, state) {
        final instaStories = state.stories;
        return SizedBox(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: instaStories.length,
            itemBuilder: (context, index) {
              final story = instaStories[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage(story.imageUrl),
                      radius: 30,
                    ),
                    const SizedBox(height: 5),
                    Text(story.username,
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
