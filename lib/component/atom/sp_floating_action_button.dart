import 'package:flutter/material.dart';
import '../../constants/ui/ui_size.dart';

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
    final ThemeData theme = Theme.of(context);
    final Color bgColor = backgroundColor ?? theme.colorScheme.primary;
    final Color fgColor = foregroundColor ?? theme.colorScheme.onPrimary;
    final Color iColor = iconColor ?? Colors.white;
    final double uiSize = size ?? UiSize.medium;

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
