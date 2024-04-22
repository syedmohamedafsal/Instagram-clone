import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/pages/home/acc_switch.dart';
import 'package:instagram_clone/pages/likes/likes.dart';
import 'package:instagram_clone/pages/profile/profile.dart';
import 'package:instagram_clone/pages/search/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          Logins(),
          SearchScreen(),
          Likes(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("image/bottom_nav/home_outline.svg"),
            activeIcon: SvgPicture.asset("image/bottom_nav/home.svg"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("image/bottom_nav/search.svg"),
            activeIcon: SvgPicture.asset("image/bottom_nav/search_fill.svg"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("image/like.svg"),
            activeIcon: SvgPicture.asset("image/bottom_nav/heart_fill.svg"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("image/images.png", height: 30,width: 30),
            activeIcon: Image.asset("image/images.png", height: 30,width: 30,),
            label: "",
          ),
        ],
      ),
    );
  }
}
