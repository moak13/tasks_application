import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/l10n.dart';
import '../models/models.dart';

List<Task> _taskList = [
  Task(
    id: '1',
    title: '${S.current.task} ${S.current.one}',
    subTitle: S.current.simple_description,
    dateTime: DateTime.now(),
  ),
  Task(
    id: '2',
    title: '${S.current.task} ${S.current.two}',
    subTitle: S.current.simple_description,
    dateTime: DateTime.now(),
  ),
  Task(
    id: '3',
    title: '${S.current.task} ${S.current.three}',
    subTitle: S.current.simple_description,
    dateTime: DateTime.now(),
  ),
  Task(
    id: '4',
    title: '${S.current.task} ${S.current.four}',
    subTitle: S.current.simple_description,
    dateTime: DateTime.now(),
  ),
  Task(
    id: '5',
    title: '${S.current.task} ${S.current.five}',
    subTitle: S.current.simple_description,
    dateTime: DateTime.now(),
  ),
  Task(
    id: '6',
    title: '${S.current.task} ${S.current.six}',
    subTitle: S.current.simple_description,
    dateTime: DateTime.now(),
  ),
];

final tasksProvider = Provider<List<Task>>((ref) {
  return _taskList;
});
