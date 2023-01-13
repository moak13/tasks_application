import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../tasks/tasks_view.dart';

class TasksLocation extends BeamLocation<BeamState> {
  TasksLocation(RouteInformation routeInformation) : super(routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(
          key: const ValueKey('tasks'),
          title: S.of(context).tasks,
          child: const TasksView(),
        ),
      ];

  @override
  List<Pattern> get pathPatterns => ['tasks/:taskId'];
}
