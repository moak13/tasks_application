import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class TaskTabletLargeView extends StatelessWidget {
  final Task? task;

  const TaskTabletLargeView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Task Tablet Large View'),
      ),
    );
  }
}
