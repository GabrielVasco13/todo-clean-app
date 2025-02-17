import 'package:flutter/material.dart';
import 'package:todo_app/app/config/dependencies.dart';
import 'package:todo_app/app/ui/todo/viewmodel/add_todo_viewmodel.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final viewModel = injector.get<AddTodoViewlmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input Row
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Add a new task',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Todo List
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Example count
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      title: const Text('Example Todo Item'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
