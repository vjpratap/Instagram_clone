import 'package:instagram_clone/Models/User.dart';

class Feed { 
  List<Map<String, dynamic>> images;
  User user;
  Feed({required this.images, required this.user});
}