import 'package:flutter/material.dart';
import 'package:study_pal_frontend/constants/ui/ui_size.dart';

class SpFloatingActionButton extends StatelessWidget {
  const SpFloatingActionButton({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    required this.icon,
    this.iconColor,
    this.size,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = backgroundColor ?? theme.colorScheme.primary;
    final fgColor = foregroundColor ?? theme.colorScheme.onPrimary;
    final iColor = iconColor ?? Colors.white;
    final uiSize = size ?? UiSize.medium.size;

    return SizedBox(
      width: uiSize,
      height: uiSize,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        shape: const CircleBorder(),
        child: Icon(
          icon,
          color: iColor,
          size: uiSize * 0.5,
        ),
      ),
    );
  }
}
