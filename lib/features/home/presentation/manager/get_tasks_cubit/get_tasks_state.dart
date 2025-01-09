part of 'get_tasks_cubit.dart';

@immutable
sealed class GetTasksState {}

final class GetTasksInitial extends GetTasksState {}

final class GetTaskLoading extends GetTasksState {}

final class GetTaskSuccess extends GetTasksState {
  final List<TaskModel> tasks;

  GetTaskSuccess(this.tasks);
}

final class GetTaskFailure extends GetTasksState {
  final String errMessage;

  GetTaskFailure(this.errMessage);
}
