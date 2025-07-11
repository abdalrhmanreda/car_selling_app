import 'package:flutter/material.dart';
import 'package:sayaraty/features/fav/ui/screens/fav_screen.dart';
import 'package:sayaraty/features/home/ui/screens/home.dart';
import 'package:sayaraty/features/layout/widgets/custom_nav_bar.dart';
import 'package:sayaraty/features/profile/ui/profile_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    FavScreen(),
    ProfileScreen(),
    // Add other screens here, e.g., FavoritesScreen(), ProfileScreen(), etc.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: CustomNavBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
