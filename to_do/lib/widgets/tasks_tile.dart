import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme_state.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?)? checkboxCallback;
  final VoidCallback longPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            // color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
