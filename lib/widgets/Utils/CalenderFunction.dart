import 'package:flutter/material.dart';

class CalendarUtils {
  static Future<DateTime?> showCalendar(BuildContext context, DateTime selectedDate) async {
    return showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
  }
}
