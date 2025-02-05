import 'package:ecommerceappriverpod/model/to_do_items.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final itemProvider = StateNotifierProvider<ItemNotifier, List<Item>>((ref) {
  return ItemNotifier();
});

class ItemNotifier extends StateNotifier<List<Item>> {
  ItemNotifier() : super([]);
  void addItem(String item) {
    final items = Item(id: DateTime.now().toString(), name: item);
    state.add(items);
    state = state.toList();
  }

  void removeItem(String id) {
    state.removeWhere((item) => item.id == id);
    state = state.toList();
  }

  void updateItem(String id, String name) {
    int indexfound = state.indexWhere((item) => item.id == id);
    state[indexfound].name = name;
    state = state.toList();
  }
}
