class InstaStory {
  String imageUrl;
  String username;

  InstaStory({
    required this.imageUrl,
    required this.username,
  });

  factory InstaStory.fromJson(Map<String, dynamic> json) {
    return InstaStory(
      imageUrl: json['image_url'] ?? '',
      username: json['username'] ?? '',
    );
  }
}
