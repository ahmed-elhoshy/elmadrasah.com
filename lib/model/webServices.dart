import 'package:dio/dio.dart';
import 'package:elmadrasah/model/days.dart';
import 'package:elmadrasah/model/purposes.dart';
import 'package:retrofit/http.dart';

part 'webServices.g.dart';

@RestApi(baseUrl: 'https://elmadrasah-api-b15c60ca4d8d.herokuapp.com/flow/')
abstract class Webservices {
  factory Webservices(Dio dio, {String baseUrl}) = _Webservices;

  @GET('day')
  Future<List<Days>> getAllDays();

  @GET('purpose')
  Future<List<Purposes>> getAllPurposes();
}
