import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:on_budget/assets/colors/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

int _currentIndex = 0;

class _BottomBarState extends State<BottomBar> {
  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryColor,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          currentIndex: _currentIndex,
          onTap: changePage,
          // dotIndicatorColor: Colors.black,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Colors.purple,
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.favorite_border),
              selectedColor: Colors.pink,
            ),
            DotNavigationBarItem(
              icon: const ImageIcon(AssetImage(
                      'lib/assets/bottom_bar/chatbot.png') // Adjust the size as needed
                  ),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.search),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
