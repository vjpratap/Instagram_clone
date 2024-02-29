import 'package:bloc/bloc.dart';
import 'package:instagram_clone/bloc/events/insta_story_events.dart';
import 'package:instagram_clone/bloc/states/insta_story_state.dart';
import '../Models/insta_story.dart';

class InstaStoryBloc extends Bloc<InstaStoryEvent, InstaStoryState> {
  InstaStoryBloc() : super(InstaStoryState([]));

  @override
  Stream<InstaStoryState> mapEventToState(InstaStoryEvent event) async* {
    if (event is LoadInstaStories) {
      // Simulate loading Insta Stories from a data source
      final List<InstaStory> stories = [
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

      yield InstaStoryState(stories);
    }
  }
}
