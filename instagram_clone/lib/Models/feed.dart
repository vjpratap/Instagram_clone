import 'package:instagram_clone/Models/user.dart';

class Feed { 
  List<Map<String, dynamic>> images;
  User user;
  Feed({required this.images, required this.user});

  factory Feed.fromJson(Map<String, dynamic> json) {
    List<Map<String, dynamic>> imagesList = json['images'] != null ? List<Map<String, dynamic>>.from(json['images']) : [];
    User user = User.fromJson(json['user'] ?? {});
    return Feed(
      images: imagesList,
      user: user,
    );
  }
}