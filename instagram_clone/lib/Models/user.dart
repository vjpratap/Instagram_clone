class User {
  String username;
  String id;
  String fullName;
  String profilePicture;
  User({required this.username, required this.fullName, required this.profilePicture, required this.id});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'] ?? '',
      fullName: json['full_name'] ?? '',
      profilePicture: json['profile_picture'] ?? '',
      id: json['id'] ?? '',
    );
  }
  
}
