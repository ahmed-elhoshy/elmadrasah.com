import 'package:elmadrasah/model/days.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class MyStates {}

class MyInitial extends MyStates {}

class GetAllDays extends MyStates {
  final List<Days> allDaysList;

  GetAllDays(this.allDaysList);
}
