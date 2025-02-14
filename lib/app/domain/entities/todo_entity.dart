import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.freezed.dart';
part 'todo_entity.g.dart';

@freezed
sealed class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String title,
    required bool completed,
  }) = _Todo;

  const factory Todo.empty() = _Empty;
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
