import 'package:json_annotation/json_annotation.dart';

part 'days.g.dart';

@JsonSerializable()
class Days {
  int? id;
  String? englishData;
  String? arabicData;
  String? forData;

  Days({this.id, this.englishData, this.arabicData, this.forData});

  factory Days.fromJson(Map<String, dynamic> json) => _$DaysFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DaysToJson(this);
}
