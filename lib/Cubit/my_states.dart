import 'package:elmadrasah/model/days.dart';
import 'package:flutter/cupertino.dart';

import '../model/purposes.dart';

@immutable
abstract class MyStates {}

class MyInitial extends MyStates {}

class GetAllDays extends MyStates {
  final List<Days> allDaysList;

  GetAllDays(this.allDaysList);
}

class GetAllPurposes extends MyStates {
  final List<Purposes> allPurposesList;

  GetAllPurposes(this.allPurposesList);
}
