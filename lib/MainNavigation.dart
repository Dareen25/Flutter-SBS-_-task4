import 'package:flutter/material.dart';
import 'Settings.dart';
import 'ColorGallery.dart';

class MainNavigation extends StatefulWidget {
  final String name;

  const MainNavigation({super.key, required this.name});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currIndex = 0;

  List<Widget> _buildScreens() => [ColorGallery(), Settings(name: widget.name)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildScreens()[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currIndex = value;
          });
        },
        currentIndex: currIndex,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontSize: 20, color: Colors.white),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(fontSize: 14, color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.collections),
            label: "Gallery",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
