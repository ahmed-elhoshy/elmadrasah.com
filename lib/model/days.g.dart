// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Days _$DaysFromJson(Map<String, dynamic> json) => Days(
      id: (json['id'] as num?)?.toInt(),
      englishData: json['english_data'] as String?,
      arabicData: json['arabic_data'] as String?,
      forData: json['for_data'] as String?,
    );

Map<String, dynamic> _$DaysToJson(Days instance) =>
    <String, dynamic>{
      'id': instance.id,
      'english_data': instance.englishData,
      'arabic_data': instance.arabicData,
      'for_data': instance.forData,
    };
