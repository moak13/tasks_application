import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/core.dart';
import '../../../../generated/l10n.dart';
import '../../delegate/delegate.dart';

class TasksDesktopSmallView extends ConsumerStatefulWidget {
  const TasksDesktopSmallView({super.key});

  @override
  ConsumerState<TasksDesktopSmallView> createState() =>
      _TasksDesktopSmallViewState();
}

class _TasksDesktopSmallViewState extends ConsumerState<TasksDesktopSmallView> {
  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    // Get the async value
    AsyncValue<List<Task>?> networkData = ref.watch(networkServiceProvider);
    BeamerDelegate taskDelegate = ref.watch(taskRouterDelegatesProvider);
    // Get Task State
    TaskState taskState = ref.read(taskStateProvider.notifier);

    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeMg.width(25),
                    top: SizeMg.height(10),
                    right: SizeMg.width(25),
                  ),
                  child: Text(
                    S.of(context).tasks,
                    style: TextStyle(
                      fontSize: SizeMg.text(45),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeMg.height(20),
                ),
                Container(
                  height: SizeMg.height(4),
                  margin: EdgeInsets.only(
                    left: SizeMg.width(20),
                    right: SizeMg.width(20),
                  ),
                  width: double.infinity,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: SizeMg.height(50),
                ),
                networkData.when(
                  data: (data) {
                    if (data == null || data.isEmpty) {
                      return const Center(
                        child: Text('No Task(s) Found'),
                      );
                    }

                    return Expanded(
                      child: ListView.separated(
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
                                fontSize: SizeMg.text(25),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            subtitle: Text(
                              Jiffy(task.dateTime ?? DateTime.now())
                                  .format('dd/MM, HH:MM'),
                              style: TextStyle(
                                fontSize: SizeMg.text(20),
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            onTap: () {
                              taskState.setTask(task);
                            },
                          );
                        },
                      ),
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
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: 3,
            color: Colors.blueGrey,
          ),
          Builder(builder: (context) {
            if ((context.currentBeamLocation.state as BeamState)
                .uri
                .path
                .isEmpty) {
              return const Expanded(
                child: Center(
                  child: Text('No Task(s) has been selected.'),
                ),
              );
            }
            return Expanded(
              child: Beamer(
                key: GlobalKey<BeamerState>(),
                routerDelegate: taskDelegate,
              ),
            );
          }),
        ],
      ),
    );
  }
}
