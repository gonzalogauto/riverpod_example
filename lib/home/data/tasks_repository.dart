import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/core/dio.dart';
import 'package:tasks_repository/tasks_repository.dart';

part 'tasks_repository.g.dart';

/// [TasksRepositoryRef] provider that returns an instance of [TasksRepository]
@riverpod
class TasksRepositoryRef extends _$TasksRepositoryRef {
  @override
  TasksRepository build() => TasksRepository(
        dio: ref.watch(
          dioRefProvider(baseUrl: const String.fromEnvironment('BASE_URL')),
        ),
      );
}

/// [FetchTasksRef] provider that returns a List of [Task]

@riverpod
class FetchTasksRef extends _$FetchTasksRef {
  @override
  Future<List<Task>> build() async {
    final tasksRepo = ref.watch(tasksRepositoryRefProvider);
    final cancelToken = CancelToken();
    ref.onDispose(() {
      print('DISPOSED: FetchTasksRef');
      cancelToken.cancel();
    });
    return tasksRepo.fetchTasks(cancelToken: cancelToken);
  }
}

/// [FetchTasksByIdRef] provider that returns a [Task] by the given id

@riverpod
class FetchTasksByIdRef extends _$FetchTasksByIdRef {
  @override
  Future<Task> build({
    required int taskId,
  }) async {
    final tasksRepo = ref.watch(tasksRepositoryRefProvider);
    final cancelToken = CancelToken();
    ref.onDispose(() {
      print('DISPOSED: FetchTasksByIdRef');
      cancelToken.cancel();
    });
    return tasksRepo.fetchTaskById(id: taskId, cancelToken: cancelToken);
  }
}
