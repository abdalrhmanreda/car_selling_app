import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sayaraty/core/helpers/spacing.dart';
import 'package:sayaraty/features/profile/ui/widget/image_and_emila.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom App Bar
            const Text(
              'Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacing.verticalSpace(15),
            // Profile Header
            ImageAndEmailSection(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _buildMenuItem(
                    icon: Iconsax.edit_outline,
                    title: 'Edit Profile',
                    color: Colors.black,
                    onTap: () => _handleMenuTap(context, 'Edit Profile'),
                  ),

                  _buildMenuItem(
                    icon: Iconsax.setting_2_outline,
                    title: 'Settings',
                    color: Colors.black,
                    onTap: () => _handleMenuTap(context, 'Settings'),
                  ),
                  _buildMenuItem(
                    icon: Iconsax.location_outline,
                    title: 'Location',
                    color: Colors.black,
                    onTap: () => _handleMenuTap(context, 'Settings'),
                  ),
                  _buildMenuItem(
                    icon: Iconsax.language_circle_outline,
                    title: 'Language',
                    color: Colors.black,
                    onTap: () => _handleMenuTap(context, 'Add Pin'),
                  ),
                  _buildMenuItem(
                    icon: Iconsax.people_outline,
                    title: 'Invite a Friend',
                    color: Colors.black,
                    onTap: () => _handleMenuTap(context, 'Invite a Friend'),
                  ),

                  _buildMenuItem(
                    icon: Icons.logout,
                    title: 'Logout',
                    color: Colors.red,
                    onTap: () => _handleMenuTap(context, 'Logout'),
                    isLast: true,
                  ),
                ],
              ),
            ),

            // Menu Items
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
    bool isLast = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        decoration: BoxDecoration(
          border:
              isLast
                  ? null
                  : Border(
                    bottom: BorderSide(color: Colors.grey[200]!, width: 1),
                  ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: color, size: 20),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.grey[400], size: 20),
          ],
        ),
      ),
    );
  }

  void _handleMenuTap(BuildContext context, String menuItem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$menuItem tapped'),
        duration: const Duration(seconds: 2),
      ),
    );

    // Add your navigation logic here
    switch (menuItem) {
      case 'Edit Profile':
        // Navigate to edit profile screen
        break;
      case 'Add Pin':
        // Navigate to add pin screen
        break;
      case 'Settings':
        // Navigate to settings screen
        break;
      case 'Invite a Friend':
        // Open invite dialog or screen
        break;
      case 'Logout':
        // Show logout confirmation dialog
        _showLogoutDialog(context);
        break;
    }
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Add logout logic here
              },
              child: const Text('Logout', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
