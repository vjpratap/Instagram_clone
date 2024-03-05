import 'package:instagram_clone/Feeds/Models/user.dart';
import 'package:instagram_clone/Stories/models/insta_story.dart';

class Feed {
  List<String> tags;
  String type;
  List<Comment> comments;
  String filter;
  String createdTime;
  String link;
  Likes likes;
  Images images;
  List<UserInPhoto> usersInPhoto;
  Caption caption;
  bool userHasLiked;
  String id;
  User user;
  List<InstaStory> instaStories;

  Feed(
      {required this.tags,
      required this.type,
      required this.comments,
      required this.filter,
      required this.createdTime,
      required this.link,
      required this.likes,
      required this.images,
      required this.usersInPhoto,
      required this.caption,
      required this.userHasLiked,
      required this.id,
      required this.user,
      required this.instaStories});

  factory Feed.fromJson(Map<String, dynamic> json) {
    return Feed(
        tags: List<String>.from(json['tags'] ?? []),
        type: json['type'] ?? '',
        comments: List<Comment>.from((json['comments']['data'] ?? [])
            .map((comment) => Comment.fromJson(comment))),
        filter: json['filter'] ?? '',
        createdTime: json['created_time'] ?? '',
        link: json['link'] ?? '',
        likes: Likes.fromJson(json['likes']),
        images: Images.fromJson(json['images']),
        usersInPhoto: List<UserInPhoto>.from((json['users_in_photo'] ?? [])
            .map((userInPhoto) => UserInPhoto.fromJson(userInPhoto))),
        caption: Caption.fromJson(json['caption']),
        userHasLiked: json['user_has_liked'] ?? false,
        id: json['id'] ?? '',
        user: User.fromJson(json['user']),
        instaStories: List<InstaStory>.from((json['insta_stories'] ?? [])
            .map((instaStories) => InstaStory.fromJson(instaStories))));
  }
}

class Comment {
  String createdTime;
  String text;
  User from;
  String id;

  Comment({
    required this.createdTime,
    required this.text,
    required this.from,
    required this.id,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      createdTime: json['created_time'] ?? '',
      text: json['text'] ?? '',
      from: User.fromJson(json['from']),
      id: json['id'] ?? '',
    );
  }
}

class Likes {
  int count;
  List<User> data;

  Likes({
    required this.count,
    required this.data,
  });

  factory Likes.fromJson(Map<String, dynamic> json) {
    return Likes(
      count: json['count'] ?? 0,
      data: List<User>.from(
          (json['data'] ?? []).map((user) => User.fromJson(user))),
    );
  }
}

class Images {
  Resolution lowResolution;
  Resolution thumbnail;
  Resolution standardResolution;

  Images({
    required this.lowResolution,
    required this.thumbnail,
    required this.standardResolution,
  });

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      lowResolution: Resolution.fromJson(json['low_resolution']),
      thumbnail: Resolution.fromJson(json['thumbnail']),
      standardResolution: Resolution.fromJson(json['standard_resolution']),
    );
  }
}

class Resolution {
  String url;
  int width;
  int height;

  Resolution({
    required this.url,
    required this.width,
    required this.height,
  });

  factory Resolution.fromJson(Map<String, dynamic> json) {
    return Resolution(
      url: json['url'] ?? '',
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
    );
  }
}

class UserInPhoto {
  Position position;
  User user;

  UserInPhoto({
    required this.position,
    required this.user,
  });

  factory UserInPhoto.fromJson(Map<String, dynamic> json) {
    return UserInPhoto(
      position: Position.fromJson(json['position']),
      user: User.fromJson(json['user']),
    );
  }
}

class Position {
  double y;
  double x;

  Position({
    required this.y,
    required this.x,
  });

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      y: json['y'] ?? 0.0,
      x: json['x'] ?? 0.0,
    );
  }
}

class Caption {
  String createdTime;
  String text;
  User from;
  String id;

  Caption({
    required this.createdTime,
    required this.text,
    required this.from,
    required this.id,
  });

  factory Caption.fromJson(Map<String, dynamic> json) {
    return Caption(
      createdTime: json['created_time'] ?? '',
      text: json['text'] ?? '',
      from: User.fromJson(json['from']),
      id: json['id'] ?? '',
    );
  }
}
