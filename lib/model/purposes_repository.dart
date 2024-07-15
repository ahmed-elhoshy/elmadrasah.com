import 'package:elmadrasah/model/purposes.dart';
import 'package:elmadrasah/model/webServices.dart';

class PurposesRepository {
  final Webservices webservices;

  PurposesRepository(this.webservices);

  Future<List<Purposes>> getAllPurposes() async {
    var response = await webservices.getAllPurposes();

    ///List of days
    return response
        .map((PurposesDataFromJson) =>
            Purposes.fromJson(PurposesDataFromJson.toJson()))
        .toList();

    /// dayDataFromJson single day object
  }
}
