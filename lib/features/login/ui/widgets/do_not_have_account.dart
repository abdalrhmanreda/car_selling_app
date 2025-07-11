import 'package:flutter/material.dart';
import 'package:sayaraty/core/helpers/extensions.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../config/themes/font_weight.dart';
import '../../../../core/methods/get_responsive_text/responsive_text.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../register/ui/screens/phone_auth.dart';

class DonotHaveAccount extends StatelessWidget {
  const DonotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.dontHaveAccount,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: getResponsiveFontSize(context, fontSize: 16),
            fontWeight: FontWeightHelper.regular,
            color: AppColors.kGreyColor,
          ),
        ),
        TextButton(
          onPressed: () {
            context.navigateToWidget(context, const PhoneAuthScreen());
          },
          child: Text(
            AppLocalizations.of(context)!.singUp,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeightHelper.semiBold,
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
