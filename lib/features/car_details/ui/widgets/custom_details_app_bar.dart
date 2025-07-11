import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: IconButton(
            icon: const Icon(Iconsax.arrow_left_2_outline, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ],
    );
  }
}
