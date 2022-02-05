class Task {
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

class Card {
  final String name;
  bool isDone;

  Card({required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

class Screen {}
