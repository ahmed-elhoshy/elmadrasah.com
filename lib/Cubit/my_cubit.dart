import 'package:elmadrasah/model/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_states.dart';

class MyCubit extends Cubit<MyStates> {
  final Repository repository;

  MyCubit(this.repository) : super(MyInitial());

  void emitGetAllDays() {
    repository.getAllDays().then((daysList) {
      emit(GetAllDays(daysList));
    });
  }
}
