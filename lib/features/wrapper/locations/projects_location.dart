import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../projects/projects_view.dart';

class ProjectsLocation extends BeamLocation<BeamState> {
  ProjectsLocation(RouteInformation routeInformation) : super(routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(
          key: const ValueKey('projects'),
          title: S.of(context).projects,
          child: const ProjectsView(),
        ),
      ];

  @override
  List<Pattern> get pathPatterns => ['projects/:projectId'];
}
