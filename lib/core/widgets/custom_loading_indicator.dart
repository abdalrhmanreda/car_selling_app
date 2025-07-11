import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../../core/colors/app_colors.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key, this.width, this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? 50,
        height: height ?? 50,
        child: const LoadingIndicator(
          indicatorType: Indicator.ballRotateChase,
          colors: [AppColors.kPrimaryColor],
        ),
      ),
    );
  }
}
