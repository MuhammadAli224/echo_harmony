// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDTO _$HomeDTOFromJson(Map<String, dynamic> json) => _HomeDTO(
  name: json['name'] as String,
  image: json['image'] as String,
  description: json['descreption'] as String?,
);

Map<String, dynamic> _$HomeDTOToJson(_HomeDTO instance) => <String, dynamic>{
  'name': instance.name,
  'image': instance.image,
  'descreption': instance.description,
};
