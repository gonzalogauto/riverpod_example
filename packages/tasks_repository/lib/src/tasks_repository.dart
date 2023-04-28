// ignore_for_file: inference_failure_on_function_invocation

import 'package:dio/dio.dart';
import 'package:tasks_repository/src/models/task.dart';

/// [TasksRepository] class
class TasksRepository {
  /// [TasksRepository] fetches the list of tasks
  const TasksRepository({
    required Dio dio,
  }) : _dio = dio;

  /// [Dio] instance
  final Dio _dio;

  /// [fetchTasks] fetches all the tasks
  Future<List<Task>> fetchTasks({
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get(
      'tasks.json',
      cancelToken: cancelToken,
    );
    final data = response.data as List<dynamic>;
    final tasks = data
        .map((element) => Task.fromJson(element as Map<String, dynamic>))
        .toList();

    return tasks;
  }

  /// [fetchTasks] fetches all the tasks
  Future<Task> fetchTaskById({
    required int id,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get(
      'task$id.json',
      cancelToken: cancelToken,
    );
    final data = response.data as Map<String, dynamic>;
    return Task.fromJson(data);
  }
}
