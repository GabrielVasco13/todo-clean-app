import 'dart:convert';

import 'package:result_dart/result_dart.dart';
import 'package:todo_app/app/data/services/local_storage.dart';
import 'package:todo_app/app/domain/entities/todo_entity.dart';

const _todoKey = '_todoKey';

class TodoLocalStorage {
  final LocalStorage _localStorage;

  TodoLocalStorage(this._localStorage);

  AsyncResult<Todo> getTodo() {
    return _localStorage
        .getData(_todoKey) //
        .map((json) => Todo.fromJson(jsonDecode(json)));
  }

  AsyncResult<Todo> save(Todo todo) {
    return _localStorage
        .saveData(_todoKey, jsonEncode(todo.toJson()))
        .pure(todo);
  }

  AsyncResult<Unit> remove() {
    return _localStorage.removeData(_todoKey);
  }

  AsyncResult<Todo> update(Todo todo) {
    return _localStorage
        .updateData(_todoKey, jsonEncode(todo.toJson()))
        .pure(todo);
  }
}
