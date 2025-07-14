import 'package:flutter/material.dart';
import '../../atom/sp_icon.dart';

class ArticleListTitle extends StatelessWidget {
  const ArticleListTitle({
    super.key,
    required this.icon,
    this.color,
    this.decoration,
    required this.description,
    this.nickName,
    required this.userName,
  });

  final SpIcon icon;
  final Color? color;
  final BoxDecoration? decoration;
  final String description;
  final String? nickName;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        leading: icon,
        title: Row(children: <Widget>[
          Text(nickName ?? ''),
          const SizedBox(width: 20),
          Text(userName),
        ]),
        subtitle: Text(description),
        isThreeLine: true,
      ),
    );
  }
}
