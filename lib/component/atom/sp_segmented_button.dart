import 'package:flutter/material.dart';

class SpSegmentedButtonItem {
  SpSegmentedButtonItem({required this.value, required this.label});

  final String value;
  final String label;
}

class SpSegmentedButton extends StatefulWidget {
  const SpSegmentedButton({
    super.key,
    this.primaryColor,
    this.onChanged,
    required this.items,
  });

  final Color? primaryColor;
  final void Function(String)? onChanged;
  final List<SpSegmentedButtonItem> items;

  @override
  State<SpSegmentedButton> createState() => _SpSegmentedButtonState();
}

class _SpSegmentedButtonState extends State<SpSegmentedButton> {
  late Set<String> selected;
  @override
  void initState() {
    super.initState();

    selected = <String>{widget.items.first.value};
  }

  @override
  Widget build(BuildContext context) {
    final Color resolvedPrimaryColor =
        widget.primaryColor ?? Theme.of(context).colorScheme.primary;

    final TextStyle? textStyle = Theme.of(context).textTheme.labelLarge;
    final Brightness brightness = Theme.of(context).brightness;
    final Color backgroundColor = (brightness == Brightness.dark)
        ? Colors.grey.shade800
        : Colors.grey.shade300;

    final List<ButtonSegment<String>> segments =
        widget.items.map((SpSegmentedButtonItem item) {
      return ButtonSegment<String>(
        value: item.value,
        label: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(item.label, style: const TextStyle(fontSize: 16)),
        ),
      );
    }).toList();

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: SegmentedButton<String>(
        showSelectedIcon: false,
        segments: segments,
        selected: selected,
        onSelectionChanged: (Set<String> newSelection) {
          setState(() {
            selected = newSelection;
          });
          if (widget.onChanged != null && newSelection.isNotEmpty) {
            widget.onChanged!(newSelection.first);
          }
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return resolvedPrimaryColor;
              }
              return backgroundColor;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.white;
              }
              return null;
            },
          ),
          textStyle: WidgetStateProperty.all<TextStyle?>(textStyle),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          side: WidgetStateProperty.all<BorderSide>(
            const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
