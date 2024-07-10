import 'package:elmadrasah/model/webServices.dart';

import 'days.dart';

class Repository {
  final Webservices webservices;

  Repository(this.webservices);

  Future<List<Days>> getAllDays() async {
    var response = await webservices.getAllDays();

    ///List of days
    return response
        .map((dayDataFromJson) => Days.fromJson(dayDataFromJson.toJson()))
        .toList();

    /// dayDataFromJson single day object
  }
}
