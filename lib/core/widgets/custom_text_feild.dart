import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/app_colors.dart'; // Make sure this path is correct

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;
  final int? maxLength;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final int? minLines;
  final Function(String)? onSubmitted;
  final int? maxLines;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  final bool readOnly; // Explicitly define if it should be read-only

  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.hintStyle,
    this.validator,
    this.minLines,
    this.onSubmitted,
    this.textStyle,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.enabled = true,
    this.maxLength,
    this.maxLines = 1,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters,
    this.readOnly = false, // Default to false, can be set to true for pickers
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        validator: validator,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        onFieldSubmitted: onSubmitted,
        enabled: enabled,
        // Controls whether the field is interactive or greyed out
        onTap: onTap,
        // This will now work correctly
        readOnly: readOnly,
        // Use this property to prevent keyboard from showing
        maxLength: maxLength,
        minLines: minLines,
        maxLines: maxLines,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle:
              hintStyle ??
              GoogleFonts.ibmPlexSansArabic(
                color: Colors.grey.shade500,
                fontSize: 16,
              ),
          filled: true,
          fillColor: AppColors.kFilledTextField,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 20.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: AppColors.kPrimaryColor,
              width: 2,
            ),
          ),
          // Ensure disabledBorder is distinct if enabled is false
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
        ),
        style:
            textStyle ?? const TextStyle(fontSize: 16, color: Colors.black87),
      ),
    );
  }
}
