import 'package:flutter/material.dart';
import '../../atom/sp_icon.dart';

class WorkbookListTitle extends StatelessWidget {
  const WorkbookListTitle({
    super.key,
    required this.icon,
    this.color,
    this.decoration,
    required this.description,
    required this.title,
  });

  final SpIcon icon;
  final Color? color;
  final BoxDecoration? decoration;
  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: icon,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title),
                const SizedBox(height: 10),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
