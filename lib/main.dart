import 'package:competitive_buddies/01_site_specific_contests/site_specific_contest.dart';
import 'package:competitive_buddies/02_all_contests/all_contests.dart';
import 'package:competitive_buddies/02_all_contests/box.dart';
import 'package:competitive_buddies/03_learning_resources/learning_resources.dart';
import 'package:competitive_buddies/04_see_profile/see_profile.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'competitive buddies',
      theme: ThemeData(
        primaryColor: const Color(0xff69639A),
      ),
      home: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  void userClicked(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      SiteSpecific(),
      ContestBox(),
      LearningResources(),
      Profile()
    ];
    return SafeArea(
      child: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => userClicked(i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.bar_chart),
              title: const Text("CodeForces"),
              selectedColor: Colors.pink,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.laptop),
              title: const Text("All Contests"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.school),
              title: const Text("Resources"),
              selectedColor: Colors.pink,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
