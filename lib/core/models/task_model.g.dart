part of 'task_model.dart';

class TaskModelAdapter extends TypeAdapter<TaskModel> {
  @override
  final int typeId = 0;

  @override
  TaskModel read(BinaryReader reader) {
    return TaskModel(
      title: reader.read() as String,
      description: reader.read() as String,
      date: reader.read() as String,
      time: reader.read() as String,
    );
  }

  @override
  void write(BinaryWriter writer, TaskModel obj) {
    writer
      ..write(obj.title)
      ..write(obj.description)
      ..write(obj.date)
      ..write(obj.time);
  }
}
