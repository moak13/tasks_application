import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class TaskDesktopSmallView extends StatelessWidget {
  final Task? task;

  const TaskDesktopSmallView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Task Desktop Small View'),
      ),
    );
  }
}
