import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/second_page.dart';

class CardTile extends StatelessWidget {
  // final bool isChecked;
  final String cardTitle;
  // final void Function(bool?)? checkboxCallback;
  final VoidCallback longPressCallback;

  CardTile({required this.cardTitle, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 400.0,
      child: InkWell(
        child: Card(
          color: Colors.blueGrey[200],
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(
            30.0,
          ))),
          child: Center(
            child: Text(
              "Todo $cardTitle",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return SecondPage();
          }));
        },
        onLongPress: longPressCallback,
      ),
    );
  }
}
