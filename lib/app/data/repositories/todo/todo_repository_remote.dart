import 'package:result_dart/src/types.dart';
import 'package:result_dart/src/unit.dart';
import 'package:todo_app/app/data/repositories/todo/todo_repository.dart';
import 'package:todo_app/app/domain/entities/todo_entity.dart';

class TodoRepositoryRemote implements TodoRepository {
  @override
  AsyncResult<Todo> add(Todo task) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  AsyncResult<Todo> get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  AsyncResult<List<Todo>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> remove(String id) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Stream<List<Todo>> todoObserver() {
    // TODO: implement todoObserver
    throw UnimplementedError();
  }

  @override
  AsyncResult<Todo> update(Todo task) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
