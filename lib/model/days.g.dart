// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Days _$DaysFromJson(Map<String, dynamic> json) => Days(
      id: (json['id'] as num?)?.toInt(),
      englishData: json['englishData'] as String?,
      arabicData: json['arabicData'] as String?,
      forData: json['forData'] as String?,
    );

Map<String, dynamic> _$DaysToJson(Days instance) => <String, dynamic>{
      'id': instance.id,
      'englishData': instance.englishData,
      'arabicData': instance.arabicData,
      'forData': instance.forData,
    };
