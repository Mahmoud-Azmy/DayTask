part of 'create_task_cubit.dart';

@immutable
sealed class CreateTaskState {}

final class CreateTaskInitial extends CreateTaskState {}

final class CreateTaskLpading extends CreateTaskState {}

final class CreateTaskSuccess extends CreateTaskState {}

final class CreateTaskFailure extends CreateTaskState {
  final String errMessage;

  CreateTaskFailure(this.errMessage);
}
