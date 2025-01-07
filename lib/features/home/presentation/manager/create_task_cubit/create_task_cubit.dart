import 'package:day_task/core/models/task_model.dart';
import 'package:day_task/features/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'create_task_state.dart';

class CreateTaskCubit extends Cubit<CreateTaskState> {
  CreateTaskCubit(this.homeRepo) : super(CreateTaskInitial());
  final HomeRepo homeRepo;
  void createNewTask(TaskModel taskModel) async {
    emit(CreateTaskLoading());
    try {
      homeRepo.createNewTask(taskModel: taskModel);
      emit(CreateTaskSuccess());
    } catch (e) {
      emit(CreateTaskFailure(e.toString()));
    }
  }
}
