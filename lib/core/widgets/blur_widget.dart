import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredBackground extends StatelessWidget {
  final Widget child;
  final double blur;
  final Color color;

  const BlurredBackground({
    Key? key,
    required this.child,
    this.blur = 10.0,
    this.color = const Color.fromARGB(100, 255, 255, 255), // لون شفاف
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // خلفية غير واضحة
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            color: color, // لون شبه شفاف فوق البلور
          ),
        ),

        // المحتوى (مثل نص أو صورة)
        child,
      ],
    );
  }
}
