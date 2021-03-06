import 'package:flutter/material.dart';
import 'package:list_and_do/models/tasks_data.dart';
import 'package:list_and_do/widgets/task_list.dart';
import 'package:provider/provider.dart';

import '../theme/theme_state.dart';
import 'add_tasks_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return Scaffold(
      backgroundColor: state.themeData.primaryColor,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey[200],
          child: Icon(
            Icons.add,
            color: Colors.tealAccent,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    )));
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: state.themeData.colorScheme.secondary,
                  ),
                  backgroundColor: state.themeData.colorScheme.background,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todo',
                  style: state.themeData.textTheme.headline5,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
