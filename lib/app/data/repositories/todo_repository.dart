import 'package:result_dart/result_dart.dart';
import 'package:todo_app/app/domain/entities/todo_entity.dart';

abstract interface class TodoRepository {
  AsyncResult<Todo> add(Todo task);
  AsyncResult<Unit> remove(String id);
  AsyncResult<Todo> update(Todo task);
  AsyncResult<Todo> get(String id);
  Stream<Todo> todoObserver();
}
