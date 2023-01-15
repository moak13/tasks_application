import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class TaskTabletExtraLargeView extends StatelessWidget {
  final Task? task;

  const TaskTabletExtraLargeView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Task Tablet Extra Large View'),
      ),
    );
  }
}
