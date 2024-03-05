import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeBottomBar extends StatefulWidget {
   HomeBottomBar({super.key, required this.tabController});
    late TabController tabController;

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TabBar(
        controller: widget.tabController,
        padding: const EdgeInsets.symmetric(vertical: 8),
        tabs: const [
          Tab(icon: Icon(Icons.home),),
          Tab(icon: Icon(Icons.search)),
          Tab(icon: Icon(Icons.add_box_rounded)),
          Tab(icon: Icon(Icons.play_arrow)),
          Tab(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}