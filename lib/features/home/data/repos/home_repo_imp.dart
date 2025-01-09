import 'package:day_task/consts.dart';
import 'package:day_task/core/models/task_model.dart';
import 'package:day_task/features/home/data/repos/home_repo.dart';
import 'package:hive/hive.dart';

class HomeRepoImp implements HomeRepo {
  @override
  void createNewTask({required TaskModel taskModel}) async {
    var taskBox = Hive.box<TaskModel>(kTaskBox);
    taskBox.add(taskModel);
  }
  
  @override
List<TaskModel> getTasks()  {
    final taskBox = Hive.box<TaskModel>(kTaskBox);
    final tasks = taskBox.values.toList();
    return tasks;
}
  


}
