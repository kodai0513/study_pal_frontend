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
    final ThemeData theme = Theme.of(context);
    final Color bgColor = backgroundColor ?? theme.colorScheme.primary;
    final Color fgColor = foregroundColor ?? theme.colorScheme.onPrimary;
    final Color tColor = textColor ?? Colors.white;

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
