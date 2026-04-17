import 'package:json_annotation/json_annotation.dart';

part 'auth_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class AuthDTO {
  final String email;
  final String id;
  final String? name;
  AuthDTO({this.name, required this.email, required this.id});

  factory AuthDTO.fromJson(Map<String, dynamic> json) =>
      _$AuthDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AuthDTOToJson(this);
}
