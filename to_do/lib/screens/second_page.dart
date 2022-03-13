import 'package:flutter/material.dart';
import 'package:list_and_do/screens/add_tasks_screen.dart';
import 'package:list_and_do/widgets/task_list.dart';
import 'package:provider/provider.dart';

import '../models/tasks_data.dart';
import '../theme/theme_state.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return Scaffold(
      backgroundColor: state.themeData.primaryColor,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
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
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todo',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
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
                color: state.themeData.primaryColor,
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
