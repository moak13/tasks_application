import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/models.dart';

final taskStateProvider =
    StateNotifierProvider<TaskState, Task?>((ref) => TaskState());

class TaskState extends StateNotifier<Task?> {
  TaskState() : super(null);

  void setTask(Task? task) {
    state = task;
  }
}
