import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

/// the default of behavior: SnackBarBehavior.fixed
/// you can change it to SnackBarBehavior.floating to make it floating
/// I have added example of floating snackBar in the code you can try it
class CustomSnackBar {
  /// simple snackBar
  static void showSimpleSnackBar(
    BuildContext context, {
    required String message,
  }) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// show snackBar with action
  static void showSnackBarWithAction(
    BuildContext context, {
    required String message,
    required String actionLabel,
    required VoidCallback action,
  }) {
    final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: actionLabel,
        onPressed: () {
          action();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// Show floating snackBar
  static void showFloatingSnackBar(
    BuildContext context, {
    required String message,
  }) {
    final snackBar = SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// show snackBar with custom icon
  static void showErrorSnackBar(
    BuildContext context, {
    required String errorMessage,
  }) {
    final snackBar = SnackBar(
      content: Text(errorMessage, style: const TextStyle(color: Colors.red)),
      backgroundColor: Colors.red[100],
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// show snackBar with custom icon
  static void showSuccessSnackBar(
    BuildContext context, {
    required String successMsg,
  }) {
    final snackBar = SnackBar(
      content: Text(successMsg, style: const TextStyle(color: Colors.green)),
      backgroundColor: Colors.green[50],
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// snackBar with error icon and action
  static void showErrorSnackBarWithAction(
    BuildContext context, {
    required String errorMessage,
    required String actionLabel,
    required VoidCallback action,
  }) {
    final snackBar = SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.error, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              errorMessage,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.kRejectedColor,
      action: SnackBarAction(
        textColor: Colors.white,
        label: actionLabel,
        onPressed: () {
          action();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// snackBar with success icon and action
  static void showSuccessSnackBarWithAction(
    BuildContext context, {
    required String successMessage,
    required String actionLabel,
    required VoidCallback action,
  }) {
    final snackBar = SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              successMessage,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.kAcceptedColor,
      action: SnackBarAction(
        textColor: Colors.white,
        label: actionLabel,
        onPressed: () {
          action();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// snackBar with warning icon and action
  static void showWarningSnackBarWithAction(
    BuildContext context, {
    required String warningMessage,
    required String actionLabel,
    required VoidCallback action,
  }) {
    final snackBar = SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.warning, color: Colors.orange),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              warningMessage,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange[50],
      action: SnackBarAction(
        textColor: Colors.orange,
        label: actionLabel,
        onPressed: () {
          action();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// snackBar with warning icon
  static void showWarningSnackBar(
    BuildContext context, {
    required String warningMessage,
  }) {
    final snackBar = SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.warning, color: Colors.orange),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              warningMessage,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange[50],
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// snackBar with info icon and action
  static void showInfoSnackBarWithAction(
    BuildContext context, {
    required String infoMessage,
    required String actionLabel,
    required VoidCallback action,
  }) {
    final snackBar = SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.info, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              infoMessage,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.kPrimaryColor,
      action: SnackBarAction(
        textColor: Colors.white,
        label: actionLabel,
        onPressed: () {
          action();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // snackBar with custom icon and action
  static void showCustomSnackBarWithAction(
    BuildContext context, {
    required String message,
    required String actionLabel,
    required VoidCallback action,
    required IconData icon,
    required Color iconColor,
    required Color backgroundColor,
  }) {
    final snackBar = SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 10),
          Expanded(
            child: Text(message, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      action: SnackBarAction(
        textColor: Colors.white,
        label: actionLabel,
        onPressed: () {
          action();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
