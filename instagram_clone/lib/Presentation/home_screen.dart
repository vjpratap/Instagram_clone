import 'package:flutter/material.dart';
import 'package:instagram_clone/Presentation/feed_screen.dart';
import 'package:instagram_clone/Presentation/profile_screen.dart';
import 'package:instagram_clone/Models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  Widget get profileScreen { 
    return ProfileScreen(
        user: User(
          username: "iamankurjain",
          profilePicture: "",
          id: "",
          fullName: "Ankur Jain",
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          const FeedScreen(),
          profileScreen,
          profileScreen,
          profileScreen,
          profileScreen,
        ],
      ),
      bottomNavigationBar: Container(
      color: Colors.white,
      child: TabBar(
        controller: _tabController,
        padding: const EdgeInsets.symmetric(vertical: 8),
        tabs: const [
          Tab(icon: Icon(Icons.home),),
          Tab(icon: Icon(Icons.search)),
          Tab(icon: Icon(Icons.add_box_rounded)),
          Tab(icon: Icon(Icons.play_arrow)),
          Tab(icon: Icon(Icons.person)),
        ],
      ),
    ),
    );
  }
}
