import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_moto/view/screens/main_screen.dart';
import 'package:my_moto/view/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
 final bool isIOS;

 const HomeScreen({Key? key, required this.isIOS}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List<Widget> screens=[MainScreen(isIOS: isIOS,),ProfileScreen(isIOS: isIOS,),MainScreen(isIOS: isIOS),MainScreen(isIOS: isIOS)];

    if (isIOS) {
      return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings), label: 'Settings'),
            ],
          ),
          tabBuilder: (_, i) => screens[i]);
    } else {
      return DefaultTabController(
          length: 3,
          child: SafeArea(
            child: MainScreen(isIOS: isIOS,)
          ));
    }
  }
}
