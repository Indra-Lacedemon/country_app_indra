import 'package:json_annotation/json_annotation.dart';

part 'country_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class CountryDto {
  final List<String>? tld;
  final String? cca2;
  final String? ccn3;
  final String? cca3;
  final String? cioc;
  final bool? independent;
  final String? status;
  final bool? unMember;
  final IddDto? idd;
  final List<String>? capital;
  final List<String>? altSpellings;
  final String? region;
  final String? subregion;
  final bool? landlocked;
  final List<String>? borders;
  final double? area;
  final MapsDto? maps;
  final int? population;
  final String? fifa;
  final CarDto? car;
  final List<String>? timezones;
  final List<String>? continents;
  final String? flag;
  final NameDto? name;
  final Map<String, CurrencyDto>? currencies;
  final Map<String, String>? languages;
  final List<double>? latlng;
  final DemonymsDto? demonyms;
  final Map<String, TranslationDto>? translations;
  final Map<String, double>? gini;
  final FlagsDto? flags;
  final CoatOfArmsDto? coatOfArms;
  final String? startOfWeek;
  final CapitalInfoDto? capitalInfo;
  final PostalCodeDto? postalCode;

  CountryDto({
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.landlocked,
    this.borders,
    this.area,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flag,
    this.name,
    this.currencies,
    this.languages,
    this.latlng,
    this.demonyms,
    this.translations,
    this.gini,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CountryDtoToJson(this);
}

@JsonSerializable()
class IddDto {
  final String? root;
  final List<String>? suffixes;

  IddDto({this.root, this.suffixes});

  factory IddDto.fromJson(Map<String, dynamic> json) => _$IddDtoFromJson(json);

  Map<String, dynamic> toJson() => _$IddDtoToJson(this);
}

@JsonSerializable()
class MapsDto {
  final String? googleMaps;
  final String? openStreetMaps;

  MapsDto({this.googleMaps, this.openStreetMaps});

  factory MapsDto.fromJson(Map<String, dynamic> json) =>
      _$MapsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MapsDtoToJson(this);
}

@JsonSerializable()
class CarDto {
  final List<String>? signs;
  final String? side;

  CarDto({this.signs, this.side});

  factory CarDto.fromJson(Map<String, dynamic> json) => _$CarDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CarDtoToJson(this);
}

@JsonSerializable()
class NameDto {
  final String? common;
  final String? official;
  final Map<String, NativeNameDto>? nativeName;

  NameDto({
    this.common,
    this.official,
    this.nativeName,
  });

  factory NameDto.fromJson(Map<String, dynamic> json) =>
      _$NameDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NameDtoToJson(this);
}

@JsonSerializable()
class NativeNameDto {
  final String? official;
  final String? common;

  NativeNameDto({this.official, this.common});

  factory NativeNameDto.fromJson(Map<String, dynamic> json) =>
      _$NativeNameDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NativeNameDtoToJson(this);
}

@JsonSerializable()
class CurrencyDto {
  final String? name;
  final String? symbol;

  CurrencyDto({this.name, this.symbol});

  factory CurrencyDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyDtoToJson(this);
}

@JsonSerializable()
class DemonymsDto {
  final GenderDto? eng;
  final GenderDto? fra;

  DemonymsDto({this.eng, this.fra});

  factory DemonymsDto.fromJson(Map<String, dynamic> json) =>
      _$DemonymsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DemonymsDtoToJson(this);
}

@JsonSerializable()
class GenderDto {
  final String? f;
  final String? m;

  GenderDto({this.f, this.m});

  factory GenderDto.fromJson(Map<String, dynamic> json) =>
      _$GenderDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GenderDtoToJson(this);
}

@JsonSerializable()
class TranslationDto {
  final String? official;
  final String? common;

  TranslationDto({this.official, this.common});

  factory TranslationDto.fromJson(Map<String, dynamic> json) =>
      _$TranslationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TranslationDtoToJson(this);
}

@JsonSerializable()
class FlagsDto {
  final String? png;
  final String? svg;
  final String? alt;

  FlagsDto({this.png, this.svg, this.alt});

  factory FlagsDto.fromJson(Map<String, dynamic> json) =>
      _$FlagsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FlagsDtoToJson(this);
}

@JsonSerializable()
class CoatOfArmsDto {
  final String? png;
  final String? svg;

  CoatOfArmsDto({this.png, this.svg});

  factory CoatOfArmsDto.fromJson(Map<String, dynamic> json) =>
      _$CoatOfArmsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CoatOfArmsDtoToJson(this);
}

@JsonSerializable()
class CapitalInfoDto {
  final List<double>? latlng;

  CapitalInfoDto({this.latlng});

  factory CapitalInfoDto.fromJson(Map<String, dynamic> json) =>
      _$CapitalInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CapitalInfoDtoToJson(this);
}

@JsonSerializable()
class PostalCodeDto {
  final String? format;
  final String? regex;

  PostalCodeDto({this.format, this.regex});

  factory PostalCodeDto.fromJson(Map<String, dynamic> json) =>
      _$PostalCodeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PostalCodeDtoToJson(this);
}
