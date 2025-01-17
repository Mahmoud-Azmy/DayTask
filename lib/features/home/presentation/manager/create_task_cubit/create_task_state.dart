part of 'create_task_cubit.dart';

@immutable
sealed class CreateTaskState {}

final class CreateTaskInitial extends CreateTaskState {}

final class CreateTaskLoading extends CreateTaskState {}

final class CreateTaskSuccess extends CreateTaskState {}

final class CreateTaskDate extends CreateTaskState {}

final class CreateTaskTime extends CreateTaskState {}

final class CreateTaskDateSuccess extends CreateTaskState {}

final class CreateTaskTimeSuccess extends CreateTaskState {}

final class CreateTaskFailure extends CreateTaskState {
  final String errMessage;

  CreateTaskFailure(this.errMessage);
}
