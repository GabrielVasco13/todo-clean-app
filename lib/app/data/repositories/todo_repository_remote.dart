import 'dart:async';

import 'package:result_dart/src/types.dart';
import 'package:result_dart/src/unit.dart';
import 'package:todo_app/app/data/repositories/todo_repository.dart';
import 'package:todo_app/app/data/services/todo/todo_local_storage.dart';
import 'package:todo_app/app/domain/entities/todo_entity.dart';

class TodoRepositoryRemote implements TodoRepository {
  TodoRepositoryRemote(this._todoLocalStorage);

  final TodoLocalStorage _todoLocalStorage;
  final _stremController = StreamController<Todo>.broadcast();

  @override
  AsyncResult<Todo> add(Todo task) {
    return _todoLocalStorage.save(task);
  }

  @override
  AsyncResult<Todo> get(String id) {
    return _todoLocalStorage.getTodo();
  }

  @override
  AsyncResult<Unit> remove(String id) {
    return _todoLocalStorage.remove();
  }

  @override
  Stream<Todo> todoObserver() {
    return _stremController.stream;
  }

  @override
  AsyncResult<Todo> update(Todo task) {
    return _todoLocalStorage.update(task);
  }
}
