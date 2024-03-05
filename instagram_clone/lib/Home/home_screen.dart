import 'package:flutter/material.dart';
import 'package:instagram_clone/Home/widgets/home_botttom_bar.dart';
import 'package:instagram_clone/Feeds/feed_screen.dart';
import 'package:instagram_clone/Profile/profile_screen.dart';
import 'package:instagram_clone/Feeds/Models/user.dart';

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
      bottomNavigationBar: HomeBottomBar(tabController: _tabController)
    );
  }
}
