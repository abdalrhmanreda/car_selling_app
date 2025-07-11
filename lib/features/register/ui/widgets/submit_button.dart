import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayaraty/core/helpers/extension.dart';
import 'package:sayaraty/features/register/ui/screens/sign_up_screen.dart';

import '../../../../core/components/custom_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../../logic/sign_up_cubit.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.verificationId,
    required this.smsCode,
  });

  final String verificationId;
  final String smsCode;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        // Trigger the sign-up process with the provided verification ID and SMS code
        context.pushAndRemoveUntilWithScale( const SignUpScreen(phoneNumber: '01098584630',));
      },
      text: AppLocalizations.of(context)!.submit,
      height: 56.h,
    );
  }
}
