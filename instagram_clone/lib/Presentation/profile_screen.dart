import 'package:flutter/material.dart';
import 'package:instagram_clone/Models/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(user.username, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black) ,)
            ],
          )
        ],
      )
    );
  }
}