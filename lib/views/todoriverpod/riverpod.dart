import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

class TodoNotifier extends StateNotifier<List<Todo>> {
  TodoNotifier() : super([]) {
    loadTodos();
  }

  final Box _box = Hive.box('todos');

  // Load todos from Hive
  void loadTodos() {
    final storedTodos = _box.values
        .map((e) => Todo.fromMap(Map<String, dynamic>.from(e)))
        .toList();
    state = storedTodos;
  }

  // Add a new todo
  void addTodo(String title) {
    final newTodo = Todo(title: title);
    _box.add(newTodo.toMap()); // Save to Hive
    state = [...state, newTodo];
  }

  // Toggle todo completion
  void toggleTodo(int index) {
    final todo = state[index];
    final updatedTodo = Todo(title: todo.title, completed: !todo.completed);

    _box.putAt(index, updatedTodo.toMap()); // Update Hive
    state = [...state]..[index] = updatedTodo;
  }

  // Delete a todo
  void deleteTodo(int index) {
    _box.deleteAt(index); // Remove from Hive
    state = [...state]..removeAt(index);
  }
}

// Provide the state notifier
final todoProvider = StateNotifierProvider<TodoNotifier, List<Todo>>((ref) {
  return TodoNotifier();
});
