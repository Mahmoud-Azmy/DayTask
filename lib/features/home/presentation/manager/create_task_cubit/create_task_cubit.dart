import 'package:day_task/core/models/task_model.dart';
import 'package:day_task/features/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  int selectedDay = 0;

  // Function to handle date picker
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    emit(CreateTaskDate());

    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      selectedDay = selectedDate.day;
      emit(CreateTaskDateSuccess());
    }
  }

  // Function to handle time picker
  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    emit(CreateTaskTime());

    if (picked != null && picked != selectedTime) {
      selectedTime = picked;
      emit(CreateTaskTimeSuccess());
    }
  }

  // Format date to display
  String formatDate() {
    return DateFormat('dd/MM/yyyy').format(selectedDate);
  }

  String? taskEditedTime;
  void taskEditedTimefun() {
    taskEditedTime = null;
    emit(TaskEditedTime());
  }

  String? taskEditedDate;
  void taskEditedDatefun() {
    taskEditedDate = null;
    emit(TaskEditedDate());
  }
}
