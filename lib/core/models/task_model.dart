class TaskModel {
  final String title;
  final String description;
  final String date;
  final String time;

  TaskModel(
      {required this.title,
      required this.description,
      required this.date,
      required this.time});

  // final DateTime date;
  // final TimeOfDay time;
}
