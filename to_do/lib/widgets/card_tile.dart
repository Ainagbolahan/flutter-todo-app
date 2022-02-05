import 'package:flutter/material.dart';

import '../second_page.dart';

class CardTile extends StatelessWidget {
  // final bool isChecked;
  final String cardTitle;
  // final void Function(bool?)? checkboxCallback;
  final VoidCallback longPressCallback;

  CardTile({required this.cardTitle, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Container(
          color: Color(0xfffff5c9),
          alignment: Alignment.center,
          width: 300,
          height: 300,
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
    );
  }
}

// ListTile(
// onLongPress: longPressCallback,
// title: Text(
// cardTitle,
// // style: TextStyle(
// //     // color: Colors.black,
// //     decoration: isChecked ? TextDecoration.lineThrough : null),
// ),
// // trailing: Checkbox(
// //   activeColor: Colors.lightBlueAccent,
// //   value: isChecked,
// //   onChanged: checkboxCallback,
// // ),
// );
