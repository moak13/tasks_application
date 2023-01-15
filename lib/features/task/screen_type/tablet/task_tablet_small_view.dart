import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class TaskTabletSmallView extends StatelessWidget {
  final Task? task;
  const TaskTabletSmallView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Task Tablet Small View'),
      ),
    );
  }
}
