import 'package:flutter/material.dart';
import 'package:list_and_do/screens/add_card_screen.dart';
import 'package:list_and_do/theme/theme_state.dart';
import 'package:list_and_do/widgets/card_list.dart';
import 'package:list_and_do/widgets/settings.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int changeIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: state.themeData.colorScheme.secondary,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        centerTitle: true,
        title: Text(
          'Todo App',
          style: state.themeData.textTheme.headline5,
        ),
        backgroundColor: state.themeData.primaryColor,
      ),
      drawer: Drawer(
        child: SettingsPage(),
      ),
      backgroundColor: state.themeData.primaryColor,
      body: Center(
        child: Container(
          height: 700.0,
          width: 500.0,
          child: CardsList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey[200],
        tooltip: 'Add Card',
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
                child: AddCardScreen(),
              ),
            ),
          );
        },
      ), //
    );
  }
}
