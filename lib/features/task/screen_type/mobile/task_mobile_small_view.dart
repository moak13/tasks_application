import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/core.dart';

class TaskMobileSmallView extends StatelessWidget {
  final Task? task;

  const TaskMobileSmallView({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
          top: SizeMg.height(10),
          left: SizeMg.width(10),
          right: SizeMg.width(10),
        ),
        children: [
          Text(
            task?.title ?? '--',
            style: TextStyle(
              fontSize: SizeMg.text(30),
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: SizeMg.height(10),
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          SizedBox(
            height: SizeMg.height(20),
          ),
          Text(
            Jiffy(task?.dateTime ?? DateTime.now()).format('dd/MM, HH:MM'),
            style: TextStyle(
              fontSize: SizeMg.text(20),
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            task?.subTitle ?? '--',
            style: TextStyle(
              fontSize: SizeMg.text(25),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
