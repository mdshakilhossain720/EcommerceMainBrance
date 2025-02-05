import 'package:ecommerceappriverpod/controller/to_do_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shakil = ref.watch(itemProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: shakil.isEmpty
          ? const Text('No Items')
          : ListView.builder(
              shrinkWrap: true,
              itemCount: shakil.length,
              itemBuilder: (context, index) {
                final item = ref.watch(itemProvider)[index];
                return ListTile(
                  title: Text(item.name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          ref
                              .read(itemProvider.notifier)
                              .updateItem(item.id, 'Updated');
                        },
                        icon: const Icon(Icons.edit),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          ref.read(itemProvider.notifier).removeItem(item.id);
                        },
                        icon: const Icon(Icons.delete),
                      )
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(itemProvider.notifier).addItem('New Item');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
