import 'package:flutter/material.dart';
import 'package:list_and_do/models/tasks_data.dart';
import 'package:provider/provider.dart';

import 'card_tile.dart';

class CardsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CardData>(
      builder: (context, cardData, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cardData.cardCount,
          itemBuilder: (context, index) {
            final card = cardData.cards[index];
            return CardTile(
              cardTitle: card.name,
              // isChecked: task.isDone,
              // checkboxCallback: (checkboxState) {
              //   cardData.updateCard(task);
              // },
              longPressCallback: () {
                cardData.deleteCard(card);
              },
            );
          },
        );
      },
    );
  }
}

// InkWell(
// child: Card(
// color: Colors.white,
// child: Container(
// alignment: Alignment.center,
// width: 300,
// height: 300,
// child: Text(
// '${Provider.of<CardData>(context).cardCount} Cards',
// style: TextStyle(
// color: Colors.white,
// fontSize: 18,
// ),
// ),
// ),
// ),
// onTap: () {
// Navigator.of(context).push(MaterialPageRoute(
// builder: (BuildContext context) {
// return SecondPage();
// }));
// },
// );
