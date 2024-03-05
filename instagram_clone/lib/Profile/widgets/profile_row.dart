import 'package:flutter/material.dart';
import 'package:instagram_clone/Profile/widgets/profile_data_widget.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 36, // Adjust the radius as needed
                    backgroundImage: NetworkImage(
                        'https://fastly.picsum.photos/id/27/3264/1836.jpg?hmac=p3BVIgKKQpHhfGRRCbsi2MCAzw8mWBCayBsKxxtWO8g'), // Replace URL with your image URL
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Ankur",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    "Exploring",
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              const SizedBox(
                width: 36,
              ),
              const ProfileDataWidget(valueCount: '0', valueText: 'posts'),
              const ProfileDataWidget(valueCount: '3', valueText: 'followers'),
              const ProfileDataWidget(valueCount: '0', valueText: 'following')
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 28,
                width: 150,
                child: ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style,
                  onPressed: null,
                  child: Text('Edit profile',
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              SizedBox(
                height: 28,
                width: 150,
                child: ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style,
                  onPressed: null,
                  child: Text(
                    'Share profile',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.people_alt_rounded,
                    size: 24,
                  ))
            ],
          )
        ],
      );
  }
}
