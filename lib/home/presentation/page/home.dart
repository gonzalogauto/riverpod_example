// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/material.dart';
import 'package:riverpod_example/core/extensions/route_extension.dart';
import 'package:riverpod_example/home/presentation/views/tasks_view.dart';
import 'package:riverpod_example/l10n/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              l10n.welcome,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.goTo<void>(const TasksView()),
              child: Text(l10n.viewTasks),
            )
          ],
        ),
      ),
    );
  }
}
