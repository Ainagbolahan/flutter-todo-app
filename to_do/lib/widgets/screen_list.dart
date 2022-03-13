import 'package:flutter/material.dart';
import 'package:list_and_do/models/tasks_data.dart';
import 'package:list_and_do/screens/second_page.dart';
import 'package:provider/provider.dart';

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
            return SecondPage();
          },
        );
      },
    );
  }
}
