// lib/models/task.dart
class Task {
  String title;
  String description;
  DateTime fromTime;
  DateTime toTime;
  String priority; // High, Medium, Low
  bool isFlagged;

  Task({
    required this.title,
    required this.description,
    required this.fromTime,
    required this.toTime,
    required this.priority,
    this.isFlagged = false,
  });
}
