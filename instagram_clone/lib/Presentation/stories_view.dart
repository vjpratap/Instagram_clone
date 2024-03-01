import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/bloc/insta_story_bloc/insta_story_bloc.dart';
import 'package:instagram_clone/bloc/insta_story_bloc/insta_story_state.dart';

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
                    Center(
                      child: Stack(children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(story.imageUrl),
                          radius: 30,
                        ),
                        Container(
                          width: 30 * 2,
                          height: 30 * 2,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.blue,
                              width: 3.0,
                            ),
                          ),
                        ),
                      ]),
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
