import 'package:flutter/material.dart';
import 'package:list_and_do/models/tasks_data.dart';
import 'package:provider/provider.dart';

import '../theme/theme_state.dart';

class AddCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    late String newCardTitle;

    return Container(
      color: state.themeData.primaryColor,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: state.themeData.colorScheme.secondary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Card',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            TextField(
              style: state.themeData.textTheme.headline5,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: state.themeData.primaryColor,
                    width: 0.1,
                  ),
                ),
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newCardTitle = newText;
              },
            ),
            TextButton(
              // style:
              //     TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
              child: Text(
                'Add',
                style: TextStyle(),
              ),
              onPressed: () {
                Provider.of<CardData>(context, listen: false)
                    .addCard(newCardTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
