import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

/// [Task] model
@freezed
class Task with _$Task {
  /// [Task] model constructor
  factory Task({
    required int id,
    required String name,
  }) = _Task;

  /// [Task.fromJson] factory that returns an instance of [Task]
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
