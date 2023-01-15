import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class TaskTabletNormalView extends StatelessWidget {
  final Task? task;
  const TaskTabletNormalView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Task Tablet Normal View'),
      ),
    );
  }
}
