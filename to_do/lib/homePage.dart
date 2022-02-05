import 'package:flutter/material.dart';
import 'package:list_and_do/screens/add_card_screen.dart';
import 'package:list_and_do/widgets/card_list.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int changeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO"),
      ),
      body: Center(
        child: Container(
          height: 450.0,
          width: 300.0,
          child: CardsList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Card',
        child: const Icon(Icons.add),
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
