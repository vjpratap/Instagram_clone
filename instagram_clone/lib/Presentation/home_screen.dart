import 'package:flutter/material.dart';
import 'package:instagram_clone/Presentation/feed_screen.dart';
import 'package:instagram_clone/Presentation/profile_screen.dart';
import 'package:instagram_clone/Models/user.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget activeScreen() {
    if (_selectedIndex == 0) {
      return const FeedScreen();
    } else if (_selectedIndex == 4) {
      return ProfileScreen(
        user: User(
          username: "iamankurjain",
          profilePicture: "",
          id: "",
          fullName: "Ankur Jain",
        ),
      );
    } else {
      return ProfileScreen(
        user: User(
          username: "iamankurjain",
          profilePicture: "",
          id: "",
          fullName: "Ankur Jain",
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activeScreen(),
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
