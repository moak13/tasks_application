import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../teams/teams_view.dart';

class TeamsLocation extends BeamLocation<BeamState> {
  TeamsLocation(RouteInformation routeInformation) : super(routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(
          key: const ValueKey('teams'),
          title: S.of(context).teams,
          child: const TeamsView(),
        ),
      ];

  @override
  List<Pattern> get pathPatterns => ['teams/:teamId'];
}
