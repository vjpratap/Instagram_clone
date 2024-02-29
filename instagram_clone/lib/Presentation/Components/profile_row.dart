import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
         shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
         padding: const EdgeInsets.symmetric(horizontal: 36),         
         );
    return Container(
      child: Column(
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
              Column(
                children: [Text('0'), Text('posts')],
              ),
              Column(
                children: [Text('3'), Text('followers')],
              ),
              Column(
                children: [Text('20'), Text('following')],
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 28,
                child: ElevatedButton(
                  style: style,
                  onPressed: null,
                  child: const Text('Edit profile', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),),
                ),
              ),
              const SizedBox(width: 4,),
              SizedBox(
                height: 28,
                child: ElevatedButton(
                  style: style,
                  onPressed: null,
                  child: const Text('Share profile', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),),
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.people_alt_rounded, size: 24,))
            ],
          )
        ],
      ),
    );
  }
}
