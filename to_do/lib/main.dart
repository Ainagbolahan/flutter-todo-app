import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'homePage.dart';
import 'models/tasks_data.dart';
import 'models/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<TaskData>(
            create: (context) => TaskData(),
          ),
          ChangeNotifierProvider<CardData>(
            create: (context) => CardData(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: ThemeClass.lightTheme,
          // darkTheme: ThemeClass.darkTheme,

// theme: ThemeData.dark().copyWith(outlinedButtonTheme: Colors.amberAccent),
          home: MyHomePage(),
        ));
  }
}

// ChangeNotifierProvider<TaskData>(
// create: (context) => TaskData(),
// child: MaterialApp(
// debugShowCheckedModeBanner: false,
// // theme: ThemeData.dark().copyWith(outlinedButtonTheme: Colors.amberAccent),
// home: MyHomePage(),
// ),
// );
