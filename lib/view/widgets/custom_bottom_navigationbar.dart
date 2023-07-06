import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBNavBarr extends StatelessWidget {
  const CustomBNavBarr({Key? key}) : super(key: key);

  @override
  CupertinoTabBar build(BuildContext context) {
    return CupertinoTabBar(
      backgroundColor: Colors.grey[200],
      items: const [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings), label: 'Settings'),
      ],
    );
  }
}
