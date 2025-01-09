import 'package:day_task/core/models/task_model.dart';

abstract class HomeRepo {
  void createNewTask({required TaskModel taskModel});
  List<TaskModel> getTasks();
}
