import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view/home/workbook_self_made_list.dart';

class HoemePage extends ConsumerWidget {
  const HoemePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: <Widget>[
      Expanded(
        child: WorkbookSelfMadeList(key: key),
      ),
    ]);
  }
}
