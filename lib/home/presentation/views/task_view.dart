import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/home/data/tasks_repository.dart';
import 'package:riverpod_example/l10n/l10n.dart';

class TaskView extends ConsumerWidget {
  const TaskView({
    super.key,
    required this.taskId,
  });

  final int taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final task = ref.watch(fetchTasksByIdRefProvider(taskId: taskId));

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.detail),
        centerTitle: true,
      ),
      body: Center(
        child: task.when(
          data: (tasks) => Text(tasks.name),
          error: (error, __) => Text(error.toString()),
          loading: CircularProgressIndicator.new,
        ),
      ),
    );
  }
}
