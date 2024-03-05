import 'package:flutter/material.dart';
import 'package:instagram_clone/Models/user.dart';

class DiscoverPeopleItem extends StatelessWidget {
  const DiscoverPeopleItem({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      disabledBackgroundColor: Colors.blue,
      textStyle:
          const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
      padding: const EdgeInsets.symmetric(horizontal: 36),
    );
    return Container(
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey, // Transparent color for border
          width: 0.5, // Border width
        ),
        borderRadius: BorderRadius.circular(10), // Border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                user.profilePicture,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              textAlign: TextAlign.center,
              user.username,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              "Instragram Recommended",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 28,
              child: ElevatedButton(
                style: style,
                onPressed: null,
                child: const Text(
                  'Follow',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
