import 'package:flutter/material.dart';

class SpTextField extends StatelessWidget {
  const SpTextField({
    super.key,
    this.label,
    this.focusNode,
    this.onChanged,
    this.placeholder,
    this.onSubmitted,
  });

  final String? label;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final String? placeholder;
  final void Function(String)? onSubmitted;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(label != null)
          Text(
            label!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(height: 8),
        TextField(
          focusNode: focusNode,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: placeholder ?? "",
          ),
        ),
      ],
    );
  }
}
