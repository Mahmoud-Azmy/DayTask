List<String> generateDaysList() {
  final now = DateTime.now();
  final daysInMonth =
      DateTime(now.year, now.month + 1, 0).day; // Get days in current month
  final firstDayOfMonth = DateTime(now.year, now.month, 1);
  final List<String> days = [];

  for (int i = 0; i < daysInMonth; i++) {
    final day = firstDayOfMonth.add(Duration(days: i));
    days.add('${day.day},${getDayName(day.weekday)}');
  }
  return days;
}

String getDayName(int weekday) {
  const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  return days[weekday - 1];
}
