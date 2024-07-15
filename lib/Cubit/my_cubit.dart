import 'package:elmadrasah/model/days_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/purposes_repository.dart';
import 'my_states.dart';

class MyCubit extends Cubit<MyStates> {
  final DaysRepository repository;
  final PurposesRepository purposesepository;

  MyCubit(this.repository, this.purposesepository) : super(MyInitial());

  void emitGetAllDays() {
    repository.getAllDays().then((daysList) {
      if (!isClosed) {
        emit(GetAllDays(daysList));
      }
    });
  }

  void emitGetAllPurposes() {
    purposesepository.getAllPurposes().then((purposesList) {
      if (!isClosed) {
        emit(GetAllPurposes(purposesList));
      }
    });
  }
}
