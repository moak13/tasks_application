import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class TaskDesktopLargeView extends StatelessWidget {
  final Task? task;

  const TaskDesktopLargeView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Task Desktop Large View'),
      ),
    );
  }
}
