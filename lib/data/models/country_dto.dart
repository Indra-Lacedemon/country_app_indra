import 'package:json_annotation/json_annotation.dart';

part 'country_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class CountryDto {
  final List<String> tld;
  final String cca2;
  final String ccn3;
  final String cca3;
  final String? cioc;
  final bool independent;
  final String status;
  final bool unMember;
  final IddDto idd;
  final List<String> capital;
  final List<String> altSpellings;
  final String region;
  final String subregion;
  final bool landlocked;
  final List<String> borders;
  final double area;
  final MapsDto maps;
  final int population;
  final String fifa;
  final CarDto car;
  final List<String> timezones;
  final List<String> continents;
  final String flag;
  final NameDto name;
  final Map<String, CurrencyDto> currencies;
  final Map<String, String> languages;
  final List<double> latlng;
  final DemonymsDto demonyms;
  final Map<String, TranslationDto> translations;
  final Map<String, double> gini;
  final FlagsDto flags;
  final CoatOfArmsDto coatOfArms;
  final String startOfWeek;
  final CapitalInfoDto capitalInfo;
  final PostalCodeDto postalCode;

  CountryDto({
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.landlocked,
    required this.borders,
    required this.area,
    required this.maps,
    required this.population,
    required this.fifa,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flag,
    required this.name,
    required this.currencies,
    required this.languages,
    required this.latlng,
    required this.demonyms,
    required this.translations,
    required this.gini,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
    required this.postalCode,
  });

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CountryDtoToJson(this);
}

@JsonSerializable()
class IddDto {
  final String root;
  final List<String> suffixes;

  IddDto({required this.root, required this.suffixes});

  factory IddDto.fromJson(Map<String, dynamic> json) => _$IddDtoFromJson(json);

  Map<String, dynamic> toJson() => _$IddDtoToJson(this);
}

@JsonSerializable()
class MapsDto {
  final String googleMaps;
  final String openStreetMaps;

  MapsDto({required this.googleMaps, required this.openStreetMaps});

  factory MapsDto.fromJson(Map<String, dynamic> json) =>
      _$MapsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MapsDtoToJson(this);
}

@JsonSerializable()
class CarDto {
  final List<String> signs;
  final String side;

  CarDto({required this.signs, required this.side});

  factory CarDto.fromJson(Map<String, dynamic> json) => _$CarDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CarDtoToJson(this);
}

@JsonSerializable()
class NameDto {
  final String common;
  final String official;
  final Map<String, NativeNameDto> nativeName;

  NameDto({
    required this.common,
    required this.official,
    required this.nativeName,
  });

  factory NameDto.fromJson(Map<String, dynamic> json) =>
      _$NameDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NameDtoToJson(this);
}

@JsonSerializable()
class NativeNameDto {
  final String official;
  final String common;

  NativeNameDto({required this.official, required this.common});

  factory NativeNameDto.fromJson(Map<String, dynamic> json) =>
      _$NativeNameDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NativeNameDtoToJson(this);
}

@JsonSerializable()
class CurrencyDto {
  final String name;
  final String symbol;

  CurrencyDto({required this.name, required this.symbol});

  factory CurrencyDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyDtoToJson(this);
}

@JsonSerializable()
class DemonymsDto {
  final GenderDto eng;
  final GenderDto fra;

  DemonymsDto({required this.eng, required this.fra});

  factory DemonymsDto.fromJson(Map<String, dynamic> json) =>
      _$DemonymsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DemonymsDtoToJson(this);
}

@JsonSerializable()
class GenderDto {
  final String f;
  final String m;

  GenderDto({required this.f, required this.m});

  factory GenderDto.fromJson(Map<String, dynamic> json) =>
      _$GenderDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GenderDtoToJson(this);
}

@JsonSerializable()
class TranslationDto {
  final String official;
  final String common;

  TranslationDto({required this.official, required this.common});

  factory TranslationDto.fromJson(Map<String, dynamic> json) =>
      _$TranslationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TranslationDtoToJson(this);
}

@JsonSerializable()
class FlagsDto {
  final String png;
  final String svg;
  final String alt;

  FlagsDto({required this.png, required this.svg, required this.alt});

  factory FlagsDto.fromJson(Map<String, dynamic> json) =>
      _$FlagsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FlagsDtoToJson(this);
}

@JsonSerializable()
class CoatOfArmsDto {
  final String png;
  final String svg;

  CoatOfArmsDto({required this.png, required this.svg});

  factory CoatOfArmsDto.fromJson(Map<String, dynamic> json) =>
      _$CoatOfArmsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CoatOfArmsDtoToJson(this);
}

@JsonSerializable()
class CapitalInfoDto {
  final List<double> latlng;

  CapitalInfoDto({required this.latlng});

  factory CapitalInfoDto.fromJson(Map<String, dynamic> json) =>
      _$CapitalInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CapitalInfoDtoToJson(this);
}

@JsonSerializable()
class PostalCodeDto {
  final String format;
  final String regex;

  PostalCodeDto({required this.format, required this.regex});

  factory PostalCodeDto.fromJson(Map<String, dynamic> json) =>
      _$PostalCodeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PostalCodeDtoToJson(this);
}
