import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';
import '../../../generated/l10n.dart';
import '../../task/task_view.dart';
import '../../tasks/tasks_view.dart';

class TasksLocation extends BeamLocation<BeamState> {
  TasksLocation(RouteInformation routeInformation, this.ref)
      : super(routeInformation);
  Ref? ref;
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    List<BeamPage> pages = [
      BeamPage(
        key: const ValueKey('tasks'),
        title: S.of(context).tasks,
        child: const TasksView(),
      ),
    ];

    if (state.pathParameters.containsKey('taskId')) {
      String? id = state.pathParameters['taskId'];
      List<Task>? tasks = ref?.read(tasksProvider);
      Task? task = tasks?.firstWhere((task) => task.id == id);
      pages.add(
        BeamPage(
          key: ValueKey('task-$id'),
          title: task?.title,
          child: TaskView(task: task),
        ),
      );
    }

    return pages;
  }

  @override
  List<Pattern> get pathPatterns => ['tasks/:taskId'];
}
