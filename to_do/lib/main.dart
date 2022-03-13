import 'package:flutter/material.dart';
import 'package:list_and_do/theme/theme_state.dart';
import 'package:provider/provider.dart';

import 'homePage.dart';
import 'models/tasks_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
          ChangeNotifierProvider<ThemeState>(
            create: (context) => ThemeState(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue, canvasColor: Colors.transparent),
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
