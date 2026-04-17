// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDTO _$AuthDTOFromJson(Map<String, dynamic> json) => AuthDTO(
  name: json['name'] as String?,
  email: json['email'] as String,
  id: json['id'] as String,
);

Map<String, dynamic> _$AuthDTOToJson(AuthDTO instance) => <String, dynamic>{
  'email': instance.email,
  'id': instance.id,
  'name': instance.name,
};
