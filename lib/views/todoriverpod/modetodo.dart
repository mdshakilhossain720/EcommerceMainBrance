class Todo {
  final String title;
  final bool completed;

  Todo({required this.title, this.completed = false});

  // Convert Todo to Map for Hive storage
  Map<String, dynamic> toMap() {
    return {'title': title, 'completed': completed};
  }

  // Create Todo from Map
  factory Todo.fromMap(Map<dynamic, dynamic> map) {
    return Todo(
      title: map['title'],
      completed: map['completed'],
    );
  }
}
