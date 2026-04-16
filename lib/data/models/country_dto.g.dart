// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) => CountryDto(
  tld: (json['tld'] as List<dynamic>).map((e) => e as String).toList(),
  cca2: json['cca2'] as String,
  ccn3: json['ccn3'] as String,
  cca3: json['cca3'] as String,
  cioc: json['cioc'] as String?,
  independent: json['independent'] as bool,
  status: json['status'] as String,
  unMember: json['unMember'] as bool,
  idd: IddDto.fromJson(json['idd'] as Map<String, dynamic>),
  capital: (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
  altSpellings: (json['altSpellings'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  region: json['region'] as String,
  subregion: json['subregion'] as String,
  landlocked: json['landlocked'] as bool,
  borders: (json['borders'] as List<dynamic>).map((e) => e as String).toList(),
  area: (json['area'] as num).toDouble(),
  maps: MapsDto.fromJson(json['maps'] as Map<String, dynamic>),
  population: (json['population'] as num).toInt(),
  fifa: json['fifa'] as String,
  car: CarDto.fromJson(json['car'] as Map<String, dynamic>),
  timezones: (json['timezones'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  continents: (json['continents'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  flag: json['flag'] as String,
  name: NameDto.fromJson(json['name'] as Map<String, dynamic>),
  currencies: (json['currencies'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, CurrencyDto.fromJson(e as Map<String, dynamic>)),
  ),
  languages: Map<String, String>.from(json['languages'] as Map),
  latlng: (json['latlng'] as List<dynamic>)
      .map((e) => (e as num).toDouble())
      .toList(),
  demonyms: DemonymsDto.fromJson(json['demonyms'] as Map<String, dynamic>),
  translations: (json['translations'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, TranslationDto.fromJson(e as Map<String, dynamic>)),
  ),
  gini: (json['gini'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  flags: FlagsDto.fromJson(json['flags'] as Map<String, dynamic>),
  coatOfArms: CoatOfArmsDto.fromJson(
    json['coatOfArms'] as Map<String, dynamic>,
  ),
  startOfWeek: json['startOfWeek'] as String,
  capitalInfo: CapitalInfoDto.fromJson(
    json['capitalInfo'] as Map<String, dynamic>,
  ),
  postalCode: PostalCodeDto.fromJson(
    json['postalCode'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CountryDtoToJson(
  CountryDto instance,
) => <String, dynamic>{
  'tld': instance.tld,
  'cca2': instance.cca2,
  'ccn3': instance.ccn3,
  'cca3': instance.cca3,
  'cioc': instance.cioc,
  'independent': instance.independent,
  'status': instance.status,
  'unMember': instance.unMember,
  'idd': instance.idd.toJson(),
  'capital': instance.capital,
  'altSpellings': instance.altSpellings,
  'region': instance.region,
  'subregion': instance.subregion,
  'landlocked': instance.landlocked,
  'borders': instance.borders,
  'area': instance.area,
  'maps': instance.maps.toJson(),
  'population': instance.population,
  'fifa': instance.fifa,
  'car': instance.car.toJson(),
  'timezones': instance.timezones,
  'continents': instance.continents,
  'flag': instance.flag,
  'name': instance.name.toJson(),
  'currencies': instance.currencies.map((k, e) => MapEntry(k, e.toJson())),
  'languages': instance.languages,
  'latlng': instance.latlng,
  'demonyms': instance.demonyms.toJson(),
  'translations': instance.translations.map((k, e) => MapEntry(k, e.toJson())),
  'gini': instance.gini,
  'flags': instance.flags.toJson(),
  'coatOfArms': instance.coatOfArms.toJson(),
  'startOfWeek': instance.startOfWeek,
  'capitalInfo': instance.capitalInfo.toJson(),
  'postalCode': instance.postalCode.toJson(),
};

IddDto _$IddDtoFromJson(Map<String, dynamic> json) => IddDto(
  root: json['root'] as String,
  suffixes: (json['suffixes'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$IddDtoToJson(IddDto instance) => <String, dynamic>{
  'root': instance.root,
  'suffixes': instance.suffixes,
};

MapsDto _$MapsDtoFromJson(Map<String, dynamic> json) => MapsDto(
  googleMaps: json['googleMaps'] as String,
  openStreetMaps: json['openStreetMaps'] as String,
);

Map<String, dynamic> _$MapsDtoToJson(MapsDto instance) => <String, dynamic>{
  'googleMaps': instance.googleMaps,
  'openStreetMaps': instance.openStreetMaps,
};

CarDto _$CarDtoFromJson(Map<String, dynamic> json) => CarDto(
  signs: (json['signs'] as List<dynamic>).map((e) => e as String).toList(),
  side: json['side'] as String,
);

Map<String, dynamic> _$CarDtoToJson(CarDto instance) => <String, dynamic>{
  'signs': instance.signs,
  'side': instance.side,
};

NameDto _$NameDtoFromJson(Map<String, dynamic> json) => NameDto(
  common: json['common'] as String,
  official: json['official'] as String,
  nativeName: (json['nativeName'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, NativeNameDto.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$NameDtoToJson(NameDto instance) => <String, dynamic>{
  'common': instance.common,
  'official': instance.official,
  'nativeName': instance.nativeName,
};

NativeNameDto _$NativeNameDtoFromJson(Map<String, dynamic> json) =>
    NativeNameDto(
      official: json['official'] as String,
      common: json['common'] as String,
    );

Map<String, dynamic> _$NativeNameDtoToJson(NativeNameDto instance) =>
    <String, dynamic>{'official': instance.official, 'common': instance.common};

CurrencyDto _$CurrencyDtoFromJson(Map<String, dynamic> json) =>
    CurrencyDto(name: json['name'] as String, symbol: json['symbol'] as String);

Map<String, dynamic> _$CurrencyDtoToJson(CurrencyDto instance) =>
    <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

DemonymsDto _$DemonymsDtoFromJson(Map<String, dynamic> json) => DemonymsDto(
  eng: GenderDto.fromJson(json['eng'] as Map<String, dynamic>),
  fra: GenderDto.fromJson(json['fra'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DemonymsDtoToJson(DemonymsDto instance) =>
    <String, dynamic>{'eng': instance.eng, 'fra': instance.fra};

GenderDto _$GenderDtoFromJson(Map<String, dynamic> json) =>
    GenderDto(f: json['f'] as String, m: json['m'] as String);

Map<String, dynamic> _$GenderDtoToJson(GenderDto instance) => <String, dynamic>{
  'f': instance.f,
  'm': instance.m,
};

TranslationDto _$TranslationDtoFromJson(Map<String, dynamic> json) =>
    TranslationDto(
      official: json['official'] as String,
      common: json['common'] as String,
    );

Map<String, dynamic> _$TranslationDtoToJson(TranslationDto instance) =>
    <String, dynamic>{'official': instance.official, 'common': instance.common};

FlagsDto _$FlagsDtoFromJson(Map<String, dynamic> json) => FlagsDto(
  png: json['png'] as String,
  svg: json['svg'] as String,
  alt: json['alt'] as String,
);

Map<String, dynamic> _$FlagsDtoToJson(FlagsDto instance) => <String, dynamic>{
  'png': instance.png,
  'svg': instance.svg,
  'alt': instance.alt,
};

CoatOfArmsDto _$CoatOfArmsDtoFromJson(Map<String, dynamic> json) =>
    CoatOfArmsDto(png: json['png'] as String, svg: json['svg'] as String);

Map<String, dynamic> _$CoatOfArmsDtoToJson(CoatOfArmsDto instance) =>
    <String, dynamic>{'png': instance.png, 'svg': instance.svg};

CapitalInfoDto _$CapitalInfoDtoFromJson(Map<String, dynamic> json) =>
    CapitalInfoDto(
      latlng: (json['latlng'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$CapitalInfoDtoToJson(CapitalInfoDto instance) =>
    <String, dynamic>{'latlng': instance.latlng};

PostalCodeDto _$PostalCodeDtoFromJson(Map<String, dynamic> json) =>
    PostalCodeDto(
      format: json['format'] as String,
      regex: json['regex'] as String,
    );

Map<String, dynamic> _$PostalCodeDtoToJson(PostalCodeDto instance) =>
    <String, dynamic>{'format': instance.format, 'regex': instance.regex};
