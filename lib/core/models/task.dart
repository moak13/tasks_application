import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String? id,
    required String? title,
    required String? subTitle,
    required DateTime? dateTime,
  }) = _Task;
}
