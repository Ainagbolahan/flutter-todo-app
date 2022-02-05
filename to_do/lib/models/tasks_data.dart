import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:list_and_do/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

class CardData extends ChangeNotifier {
  List<Card> _cards = [];

  UnmodifiableListView<Card> get cards {
    return UnmodifiableListView(_cards);
  }

  List<Card> _screens = [];

  List<Screen> screens = [];

  int get cardCount {
    return _cards.length;
  }

  void addCard(String newCardTitle) {
    final card = Card(name: newCardTitle);
    _cards.add(card);
    notifyListeners();
  }

  void updateCard(Card card) {
    card.toggleDone();
    notifyListeners();
  }

  void deleteCard(Card card) {
    _cards.remove(card);
    notifyListeners();
  }
}
