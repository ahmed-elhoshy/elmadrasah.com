import 'package:json_annotation/json_annotation.dart';

part 'days.g.dart';

@JsonSerializable()
class Days {
  final int? id;
  @JsonKey(name: 'english_data')
  final String? englishData;
  @JsonKey(name: 'arabic_data')
  final String? arabicData;
  @JsonKey(name: 'for_data')
  final String? forData;

  Days({this.id, this.englishData, this.arabicData, this.forData});

  factory Days.fromJson(Map<String, dynamic> json) => _$DaysFromJson(json);

  Map<String, dynamic> toJson() => _$DaysToJson(this);
}
