import 'package:json_annotation/json_annotation.dart';

part 'purposes.g.dart';

@JsonSerializable()
class Purposes {
  final int? id;
  @JsonKey(name: 'english_data')
  final String? englishData;
  @JsonKey(name: 'arabic_data')
  final String? arabicData;
  @JsonKey(name: 'for_data')
  final String? forData;

  Purposes({this.id, this.englishData, this.arabicData, this.forData});

  factory Purposes.fromJson(Map<String, dynamic> json) =>
      _$PurposesFromJson(json);

  Map<String, dynamic> toJson() => _$PurposesToJson(this);
}
