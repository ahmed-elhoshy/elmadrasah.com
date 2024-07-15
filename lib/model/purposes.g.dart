// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purposes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Purposes _$PurposesFromJson(Map<String, dynamic> json) => Purposes(
      id: (json['id'] as num?)?.toInt(),
      englishData: json['english_data'] as String?,
      arabicData: json['arabic_data'] as String?,
      forData: json['for_data'] as String?,
    );

Map<String, dynamic> _$PurposesToJson(Purposes instance) => <String, dynamic>{
      'id': instance.id,
      'english_data': instance.englishData,
      'arabic_data': instance.arabicData,
      'for_data': instance.forData,
    };
