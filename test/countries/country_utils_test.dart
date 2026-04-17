import 'package:country_app_indra/countries/data/models/country_dto.dart';
import 'package:country_app_indra/countries/ui/utils/country_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CountryDto buildFullCountry({
    String? flag,
    NameDto? name,
    String? cca2,
    String? cca3,
    String? ccn3,
    String? cioc,
    String? fifa,
    String? status,
    String? region,
    String? subregion,
    List<String>? capital,
    int? population,
    double? area,
    String? startOfWeek,
    List<double>? latlng,
    CapitalInfoDto? capitalInfo,
    bool? landlocked,
    bool? independent,
    bool? unMember,
    List<String>? timezones,
    List<String>? continents,
    List<String>? borders,
    Map<String, CurrencyDto>? currencies,
    Map<String, String>? languages,
  }) {
    return CountryDto(
      flag: flag,
      name: name,
      cca2: cca2,
      cca3: cca3,
      ccn3: ccn3,
      cioc: cioc,
      fifa: fifa,
      status: status,
      region: region,
      subregion: subregion,
      capital: capital,
      population: population,
      area: area,
      startOfWeek: startOfWeek,
      latlng: latlng,
      capitalInfo: capitalInfo,
      landlocked: landlocked,
      independent: independent,
      unMember: unMember,
      timezones: timezones,
      continents: continents,
      borders: borders,
      currencies: currencies,
      languages: languages,
    );
  }

  group('CountryUtils.flag', () {
    test('returns globe when null or empty', () {
      expect(CountryUtils.flag(null), equals('🌍'));
      expect(CountryUtils.flag(CountryDto(flag: '  ')), equals('🌍'));
    });

    test('returns trimmed flag when present', () {
      expect(CountryUtils.flag(CountryDto(flag: ' 🇵🇪 ')), equals('🇵🇪'));
    });
  });

  group('CountryUtils names', () {
    test('officialName/commonName return defaults when missing', () {
      expect(CountryUtils.officialName(null), isNotEmpty);
      expect(CountryUtils.commonName(null), isNotEmpty);
    });

    test('returns values when present', () {
      final c = CountryDto(
        name: NameDto(official: 'Republic of Peru', common: 'Peru'),
      );
      expect(CountryUtils.officialName(c), equals('Republic of Peru'));
      expect(CountryUtils.commonName(c), equals('Peru'));
    });

    test('returns defaults when name exists but fields are null', () {
      final c = CountryDto(name: NameDto());
      expect(CountryUtils.officialName(c), equals('Detalle del país'));
      expect(CountryUtils.commonName(c), equals('—'));
    });
  });

  group('CountryUtils.codeLine', () {
    test('empty when no codes', () {
      expect(CountryUtils.codeLine(CountryDto()), equals(''));
    });

    test('builds line with available codes', () {
      final c = CountryDto(cca2: 'PE', cca3: 'PER', ccn3: '604');
      final line = CountryUtils.codeLine(c);
      expect(line, contains('CCA2:'));
      expect(line, contains('CCA3:'));
      expect(line, contains('CCN3:'));
    });

    test('skips codes that are only whitespace', () {
      final c = CountryDto(cca2: '  ', cca3: '\n', ccn3: '\t');
      expect(CountryUtils.codeLine(c), equals(''));
    });

    test('includes only present codes in order', () {
      final c = CountryDto(cca3: 'ESP');
      expect(CountryUtils.codeLine(c), equals('CCA3: ESP'));
    });
  });

  group('CountryUtils.overviewItems', () {
    test('returns fixed keys and empty values by default', () {
      final items = CountryUtils.overviewItems(null);
      expect(items.length, equals(6));
      expect(items.map((e) => e.$1).toList(), equals([
        'Región',
        'Subregión',
        'Capital',
        'Población',
        'Área (km²)',
        'Inicio semana',
      ]));
      expect(items.map((e) => e.$2).every((v) => v == ''), isTrue);
    });

    test('trims text fields and joins capital list', () {
      final c = buildFullCountry(
        region: '  Europe ',
        subregion: '  Southern Europe  ',
        capital: [' Rome ', ' Vatican City '],
        population: 59000000,
        area: 301340.0,
        startOfWeek: ' monday ',
      );
      final items = CountryUtils.overviewItems(c);
      expect(items[0].$2, equals('Europe'));
      expect(items[1].$2, equals('Southern Europe'));
      expect(items[2].$2, equals(' Rome ,  Vatican City ')); // join preserves item spacing
      expect(items[3].$2, equals('59000000'));
      expect(items[4].$2, equals('301340.0'));
      expect(items[5].$2, equals('monday'));
    });
  });

  group('CountryUtils.codesItems', () {
    test('returns fixed keys and trims values', () {
      final c = buildFullCountry(
        cca2: ' PE ',
        cca3: ' PER ',
        ccn3: ' 604 ',
        cioc: '  PER ',
        fifa: '  PER ',
        status: '  officially-assigned ',
      );
      final items = CountryUtils.codesItems(c);
      expect(items.length, equals(6));
      expect(items.map((e) => e.$1).toList(), equals([
        'CCA2',
        'CCA3',
        'CCN3',
        'CIOC',
        'FIFA',
        'Status',
      ]));
      expect(items.map((e) => e.$2).toList(), equals([
        'PE',
        'PER',
        '604',
        'PER',
        'PER',
        'officially-assigned',
      ]));
    });
  });

  group('CountryUtils.geoItems', () {
    test('formats lat/lng with 4 decimals and joins', () {
      final c = buildFullCountry(
        latlng: [-12.0464, -77.0428],
        capitalInfo: CapitalInfoDto(latlng: [-12.0464, -77.0428]),
      );
      final items = CountryUtils.geoItems(c);
      expect(items.length, equals(5));
      expect(items[0].$1, equals('Lat/Lng'));
      expect(items[0].$2, equals('-12.0464, -77.0428'));
      expect(items[1].$1, equals('Capital Lat/Lng'));
      expect(items[1].$2, equals('-12.0464, -77.0428'));
    });

    test('maps booleans to Sí/No and null to empty string', () {
      final c = buildFullCountry(
        landlocked: true,
        independent: false,
        unMember: null,
      );
      final items = CountryUtils.geoItems(c);
      expect(items[2], equals(('Landlocked', 'Sí')));
      expect(items[3], equals(('Independiente', 'No')));
      expect(items[4], equals(('Miembro ONU', '')));
    });
  });

  group('CountryUtils collections passthrough', () {
    test('timezones/continents/borders return empty list when null', () {
      expect(CountryUtils.timezones(null), isEmpty);
      expect(CountryUtils.continents(null), isEmpty);
      expect(CountryUtils.borders(null), isEmpty);
    });

    test('timezones/continents/borders return same values', () {
      final c = buildFullCountry(
        timezones: ['UTC-05:00'],
        continents: ['South America'],
        borders: ['BOL', 'CHL'],
      );
      expect(CountryUtils.timezones(c), equals(['UTC-05:00']));
      expect(CountryUtils.continents(c), equals(['South America']));
      expect(CountryUtils.borders(c), equals(['BOL', 'CHL']));
    });
  });

  group('CountryUtils.currencies/languages', () {
    test('filters empty and trims names', () {
      final c = buildFullCountry(
        currencies: {
          'PEN': CurrencyDto(name: '  Sol  ', symbol: 'S/.'),
          'XXX': CurrencyDto(name: '   ', symbol: '?'),
        },
        languages: {
          'spa': '  Spanish ',
          'zzz': '   ',
        },
      );
      expect(CountryUtils.currencies(c), equals(['Sol']));
      expect(CountryUtils.languages(c), equals(['Spanish']));
    });

    test('returns empty list when maps are null', () {
      final c = buildFullCountry(currencies: null, languages: null);
      expect(CountryUtils.currencies(c), isEmpty);
      expect(CountryUtils.languages(c), isEmpty);
    });
  });

  group('CountryUtils.featuredCountries', () {
    test('featuredCountries is non-empty', () {
      expect(CountryUtils.featuredCountries, isNotEmpty);
    });

    test('contains expected values', () {
      expect(CountryUtils.featuredCountries, contains('peru'));
      expect(CountryUtils.featuredCountries, contains('spain'));
      expect(CountryUtils.featuredCountries, contains('japan'));
    });
  });
}

