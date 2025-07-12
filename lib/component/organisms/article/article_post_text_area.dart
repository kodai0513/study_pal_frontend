import 'package:flutter/material.dart';

class ArticlePostTextArea extends StatelessWidget {
  const ArticlePostTextArea({
    super.key,
    required this.text,
    required this.maxLines,
    this.focusNode,
    required this.onChanged,
  });

  final String text;
  final int maxLines;
  final FocusNode? focusNode;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          focusNode: focusNode,
          maxLines: maxLines,
          onChanged: onChanged,
          decoration: const InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ).copyWith(hintText: text),
        ),
      ],
    );
  }
}

