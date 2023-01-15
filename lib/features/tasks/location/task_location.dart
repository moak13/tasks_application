import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../task/task_view.dart';

class TaskLocation extends BeamLocation<BeamState> {
  TaskLocation(RouteInformation routeInformation) : super(routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    List<BeamPage> pages = [
      BeamPage(
        key: const ValueKey('task'),
        title: S.of(context).task,
        child: const TaskView(),
      ),
    ];

    return pages;
  }

  @override
  List<Pattern> get pathPatterns => ['tasks/:taskId'];
}
