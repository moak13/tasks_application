import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/data.dart';
import '../models/models.dart';

final networkServiceProvider = FutureProvider<List<Task>?>(
    (ref) async => await NetworkService(ref).getTasks());

class NetworkService {
  NetworkService(this.ref);
  Ref? ref;

  Future<List<Task>?> getTasks() async {
    await Future.delayed(const Duration(seconds: 5));
    List<Task>? tasks = ref?.read(tasksProvider);
    return tasks;
  }
}
