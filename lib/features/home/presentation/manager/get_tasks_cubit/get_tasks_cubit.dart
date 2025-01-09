import 'package:day_task/core/models/task_model.dart';
import 'package:day_task/features/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_tasks_state.dart';

class GetTasksCubit extends Cubit<GetTasksState> {
  GetTasksCubit(this.homeRepo) : super(GetTasksInitial());
  final HomeRepo homeRepo;
  void getTasks() {
    emit(GetTaskLoading());
    try {
      final tasks = homeRepo.getTasks();
      emit(GetTaskSuccess(tasks));
    } catch (e) {
      emit(GetTaskFailure(e.toString()));
    }
  }
}
