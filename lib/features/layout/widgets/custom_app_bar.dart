import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sayaraty/config/colors/app_colors.dart';
import 'package:sayaraty/core/methods/get_responsive_text/responsive_text.dart';

import '../../../l10n/app_localizations.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String userName;

  const CustomAppBarWidget({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${AppLocalizations.of(context)!.hey} $userName 👋",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: getResponsiveFontSize(context, fontSize: 22),
            fontWeight: FontWeight.w600,
            color:
                Theme.of(context).appBarTheme.titleTextStyle?.color ??
                Colors.white,
          ),
        ),
        CircleAvatar(
          backgroundColor: AppColors.kWhiteColor,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.search_normal_outline,
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
