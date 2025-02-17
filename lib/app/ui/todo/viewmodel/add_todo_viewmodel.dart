import 'package:flutter/material.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';
import 'package:todo_app/app/data/repositories/todo_repository.dart';
import 'package:todo_app/app/domain/entities/todo_entity.dart';

class AddTodoViewlmodel extends ChangeNotifier {
  final TodoRepository _todoRepository;

  AddTodoViewlmodel(this._todoRepository);

  late final addCommand = Command1(_addTodo);

  AsyncResult<Todo> _addTodo(Todo todo) {
    return _todoRepository.add(todo);
  }
}
