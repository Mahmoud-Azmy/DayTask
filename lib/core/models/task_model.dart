import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  final int day;
  @HiveField(3)
  final String time;

  TaskModel({
    required this.title,
    required this.description,
    required this.day,
    required this.time,
  });
}
