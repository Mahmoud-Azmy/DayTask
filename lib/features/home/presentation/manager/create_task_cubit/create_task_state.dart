part of 'create_task_cubit.dart';

@immutable
sealed class CreateTaskState {}

final class CreateTaskInitial extends CreateTaskState {}

final class CreateTaskLoading extends CreateTaskState {}

final class CreateTaskSuccess extends CreateTaskState {}

final class CreateTaskFailure extends CreateTaskState {
  final String errMessage;

  CreateTaskFailure(this.errMessage);
}

final class GetTaskLoading extends CreateTaskState {}

final class GetTaskSuccess extends CreateTaskState {
  final List<TaskModel> tasks;

  GetTaskSuccess(this.tasks);
}

final class GetTaskFailure extends CreateTaskState {
  final String errMessage;

  GetTaskFailure(this.errMessage);
}
