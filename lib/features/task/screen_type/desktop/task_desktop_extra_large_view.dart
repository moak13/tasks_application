import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class TaskDesktopExtraLargeView extends StatelessWidget {
  final Task? task;

  const TaskDesktopExtraLargeView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Task Desktop Extra Large View'),
      ),
    );
  }
}
