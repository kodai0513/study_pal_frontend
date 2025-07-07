import 'package:flutter/material.dart';

class SpElevatedButton extends StatelessWidget {
  const SpElevatedButton({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    required this.label,
    this.textColor,
    required this.onPressed,
    this.enabled = true,
  });

  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? textColor;
  final String label;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = backgroundColor ?? theme.colorScheme.primary;
    final fgColor = foregroundColor ?? theme.colorScheme.onPrimary;
    final tColor = textColor ?? Colors.white;

    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: tColor,
          fontWeight: FontWeight.bold,
          ),
        ),
    );
  }
}
