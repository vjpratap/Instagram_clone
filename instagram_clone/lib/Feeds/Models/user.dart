class User {
  String username;
  String profilePicture;
  String id;
  String fullName;

  User({
    required this.username,
    required this.profilePicture,
    required this.id,
    required this.fullName,
  }) {
    // TODO: implement User
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'] ?? '',
      profilePicture: json['profile_picture'] ?? '',
      id: json['id'] ?? '',
      fullName: json['full_name'] ?? '',
    );
  }
}