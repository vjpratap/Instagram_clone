import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
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
              const SizedBox(height: 8,),
              Text("Ankur", style: Theme.of(context).textTheme.bodyMedium,),
              Text("Exploring", style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
          const SizedBox(width: 36,),

          Column(
            children: [
              Text('0'),
              Text('posts')
            ],
          ),

           Column(
            children: [
              Text('3'),
              Text('followers')
            ],
          ),

           Column(
            children: [
              Text('20'),
              Text('following')
            ],
          ),
        ],
      ),
    );
  }
}
