import 'package:instagram_clone/Models/user.dart';

class Feed {
  List<Map<String, dynamic>> images;
  User user;
  Feed({required this.images, required this.user});

  factory Feed.fromJson(Map<String, dynamic> json) {
    List<Map<String, dynamic>> imagesList = [];
    User user = User.fromJson(json['user'] ?? {});
    if (json['images'] != null) {
      if (json['images'] is List) {
        // If 'images' is a list, directly assign it to imagesList
        imagesList = List<Map<String, dynamic>>.from(json['images']);
      } else {
        // If 'images' is not a list, wrap it in a list and assign it to imagesList
        imagesList.add(Map<String, dynamic>.from(json['images']));
      }
    }
    return Feed(
      images: imagesList,
      user: user,
    );
  }
}
