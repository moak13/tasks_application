import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class TaskDesktopNormalView extends StatelessWidget {
  final Task? task;

  const TaskDesktopNormalView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Task Desktop Normal View'),
      ),
    );
  }
}
