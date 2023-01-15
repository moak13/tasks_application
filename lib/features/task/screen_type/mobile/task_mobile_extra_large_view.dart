import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/core.dart';

class TaskMobileExtraLargeView extends StatelessWidget {
  final Task? task;

  const TaskMobileExtraLargeView({super.key, this.task});

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
              fontSize: SizeMg.text(45),
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
              fontSize: SizeMg.text(35),
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(
            height: SizeMg.height(5),
          ),
          Text(
            task?.subTitle ?? '--',
            style: TextStyle(
              fontSize: SizeMg.text(40),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
