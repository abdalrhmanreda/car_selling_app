import 'package:flutter/material.dart';
import 'package:sayaraty/features/profile/ui/widget/profile_image.dart';

import '../../../../core/components/custom_button.dart';
import '../../../../core/helpers/spacing.dart';

class ImageAndEmailSection extends StatelessWidget {
  const ImageAndEmailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Profile Picture with Badge
        ProfileImage(),
        Spacing.horizontalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name
              const Text(
                'Abdalrhman Reda',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              Spacing.verticalSpace(8),
              // Email Container
              const Text(
                'abdalrhmanr935@gmai.com',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              CustomButton(
                onPressed: () {},
                text: 'Edit Profile',
                width: 130,
                height: 45,
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
