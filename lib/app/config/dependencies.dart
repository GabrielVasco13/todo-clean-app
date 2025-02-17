import 'package:auto_injector/auto_injector.dart';
import 'package:todo_app/app/data/repositories/todo_repository.dart';
import 'package:todo_app/app/data/repositories/todo_repository_remote.dart';
import 'package:todo_app/app/data/services/client_http.dart';
import 'package:todo_app/app/data/services/local_storage.dart';
import 'package:todo_app/app/data/services/todo/todo_local_storage.dart';

final injector = AutoInjector();

void setupDependencies() {
  injector.addSingleton<TodoRepository>(TodoRepositoryRemote.new);
  injector.addSingleton(ClientHttp.new);
  injector.addSingleton(LocalStorage.new);
  injector.addSingleton(TodoLocalStorage.new);
}
