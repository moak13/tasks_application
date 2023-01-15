import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/core.dart';

class TasksMobileLargeView extends ConsumerStatefulWidget {
  const TasksMobileLargeView({super.key});

  @override
  ConsumerState<TasksMobileLargeView> createState() =>
      _TasksMobileLargeViewState();
}

class _TasksMobileLargeViewState extends ConsumerState<TasksMobileLargeView> {
  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    // Get the async value
    AsyncValue<List<Task>?> networkData = ref.watch(networkServiceProvider);
    return Scaffold(
      body: networkData.when(
        data: (data) {
          if (data == null || data.isEmpty) {
            return const Center(
              child: Text('No Task(s) Found'),
            );
          }

          return ListView.separated(
            itemCount: data.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: SizeMg.height(10),
              );
            },
            itemBuilder: (BuildContext context, int index) {
              Task task = data.elementAt(index);
              return ListTile(
                title: Text(
                  task.title ?? '--',
                  style: TextStyle(
                    fontSize: SizeMg.text(20),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                subtitle: Text(
                  Jiffy(task.dateTime ?? DateTime.now()).format('dd/MM, HH:MM'),
                  style: TextStyle(
                    fontSize: SizeMg.text(10),
                    fontWeight: FontWeight.w200,
                  ),
                ),
                onTap: () {
                  context.beamToNamed('/tasks/${task.id}');
                },
              );
            },
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text('Error: $error'),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
