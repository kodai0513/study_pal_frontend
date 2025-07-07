import 'package:flutter/material.dart';

class SpIcon extends StatelessWidget {
  const SpIcon({
    super.key,
    this.color,
    this.decoration,
    required this.defaultIcon,
    this.iconUrl,
    required this.size,
  });

  final String? iconUrl;
  final IconData defaultIcon;
  final double size;
  final Color? color;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final imageWidget = (iconUrl != null && iconUrl!.isNotEmpty)
        ? Image.network(
            iconUrl!,
            width: size,
            height: size,
            errorBuilder: (_, __, ___) => Icon(defaultIcon, size: size, color: color),
          )
        : Icon(defaultIcon, size: size, color: color);

    return Container(
      width: size,
      height: size,
      decoration: decoration,
      child: imageWidget,
    );
  }
}
