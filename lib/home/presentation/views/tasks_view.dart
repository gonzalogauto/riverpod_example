// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/home/data/tasks_repository.dart';
import 'package:riverpod_example/home/presentation/views/task_view.dart';
import 'package:riverpod_example/l10n/l10n.dart';

class TasksView extends ConsumerWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final tasks = ref.watch(fetchTasksRefProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.tasks),
        centerTitle: true,
      ),
      body: tasks.when(
        data: (tasks) {
          if (tasks.isEmpty) return _buildEmptyMessage(context);
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return ListTile(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TaskView(
                      taskId: task.id,
                    ),
                  ),
                ),
                title: Text(task.name),
              );
            },
          );
        },
        error: (error, __) => Center(
          child: Text(error.toString()),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Center _buildEmptyMessage(BuildContext context) {
    final l10n = context.l10n;

    return Center(
      child: Text(l10n.noItemsHere),
    );
  }
}
