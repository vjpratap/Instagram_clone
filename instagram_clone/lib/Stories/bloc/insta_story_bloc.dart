import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/Stories/models/insta_story.dart';
import 'package:instagram_clone/Stories/bloc/insta_story_events.dart';
import 'package:instagram_clone/Stories/bloc/insta_story_state.dart'; // Import InstaStoryState

class InstaStoryBloc extends Bloc<InstaStoryEvent, InstaStoryState> {
  List<InstaStory> stories = [
    InstaStory(
      imageUrl:
          'https://fastly.picsum.photos/id/1/5000/3333.jpg?hmac=Asv2DU3rA_5D1xSe22xZK47WEAN0wjWeFOhzd13ujW4',
      username: 'Kishan',
    ),
    InstaStory(
      imageUrl:
          'https://fastly.picsum.photos/id/22/4434/3729.jpg?hmac=fjZdkSMZJNFgsoDh8Qo5zdA_nSGUAWvKLyyqmEt2xs0',
      username: 'Ankur',
    ),
    InstaStory(
      imageUrl:
          'https://fastly.picsum.photos/id/27/3264/1836.jpg?hmac=p3BVIgKKQpHhfGRRCbsi2MCAzw8mWBCayBsKxxtWO8g',
      username: 'Vijay',
    ),
    InstaStory(
      imageUrl:
          'https://fastly.picsum.photos/id/70/3011/2000.jpg?hmac=-npCfe1kpGYW7HcBlZvrEZ9Qb_EdiGLbDxE26amgotM',
      username: 'Rajiv',
    ),
    InstaStory(
      imageUrl:
          'https://fastly.picsum.photos/id/1/5000/3333.jpg?hmac=Asv2DU3rA_5D1xSe22xZK47WEAN0wjWeFOhzd13ujW4',
      username: 'Kishan',
    ),
    InstaStory(
      imageUrl:
          'https://fastly.picsum.photos/id/22/4434/3729.jpg?hmac=fjZdkSMZJNFgsoDh8Qo5zdA_nSGUAWvKLyyqmEt2xs0',
      username: 'Ankur',
    ),
    InstaStory(
      imageUrl:
          'https://fastly.picsum.photos/id/27/3264/1836.jpg?hmac=p3BVIgKKQpHhfGRRCbsi2MCAzw8mWBCayBsKxxtWO8g',
      username: 'Vijay',
    ),
    InstaStory(
      imageUrl:
          'https://fastly.picsum.photos/id/70/3011/2000.jpg?hmac=-npCfe1kpGYW7HcBlZvrEZ9Qb_EdiGLbDxE26amgotM',
      username: 'Rajiv',
    ),
  ];
  InstaStoryBloc() : super(InstaStoryState([])) {
    on<LoadInstaStories>((event, emit) => emit(InstaStoryState(stories)));
  }
}
