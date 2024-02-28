import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/Controllers/home_controller.dart';
import 'package:instagram_clone/Presentation/feed_post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
 final HomeController controller = Get.put(HomeController());


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(
                width: 4), // Add some spacing between the icon and the title
            Text(
              'Instagram',
              style: Theme.of(context).textTheme.bodyLarge,
            ), // Your title text
          ],
        ),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) { 
          return ListView.builder(
            itemCount: controller.feedList.length,
            itemBuilder: (BuildContext context, int index) {
            return FeedPost(feed: controller.feedList[index]);
          });
        }
        ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        type: BottomNavigationBarType.fixed, // Set type to fixed
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
