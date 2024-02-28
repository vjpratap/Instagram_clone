import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
const HomeScreen({super.key});

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

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Row(
children: [
SizedBox(
width: 8), // Add some spacing between the icon and the title
Text('Instagram',), // Your title text
],
),
),
body: Center(
child: Text('Page ${_selectedIndex + 1}'),
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

