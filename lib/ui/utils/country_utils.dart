import 'package:country_app_indra/data/models/country_dto.dart';

class CountryUtils {
  static const featuredCountries = <String>[
    'peru',
    'spain',
    'france',
    'italy',
    'germany',
    'brazil',
    'argentina',
    'japan',
  ];

  static String flag(CountryDto? country) {
    final f = (country?.flag ?? '').trim();
    return f.isNotEmpty ? f : '🌍';
  }

  static String officialName(CountryDto? country) {
    return country?.name?.official ?? 'Detalle del país';
  }

  static String commonName(CountryDto? country) {
    return country?.name?.common ?? '—';
  }

  static String codeLine(CountryDto? country) {
    return [
      if ((country?.cca2 ?? '').trim().isNotEmpty) 'CCA2: ${country?.cca2}',
      if ((country?.cca3 ?? '').trim().isNotEmpty) 'CCA3: ${country?.cca3}',
      if ((country?.ccn3 ?? '').trim().isNotEmpty) 'CCN3: ${country?.ccn3}',
    ].join('  ·  ').trim();
  }

  static List<(String, String)> overviewItems(CountryDto? country) {
    return <(String, String)>[
      ('Región', (country?.region ?? '').trim()),
      ('Subregión', (country?.subregion ?? '').trim()),
      ('Capital', (country?.capital ?? const <String>[]).join(', ')),
      ('Población', country?.population?.toString() ?? ''),
      ('Área (km²)', country?.area?.toString() ?? ''),
      ('Inicio semana', (country?.startOfWeek ?? '').trim()),
    ];
  }

  static List<(String, String)> codesItems(CountryDto? country) {
    return <(String, String)>[
      ('CCA2', (country?.cca2 ?? '').trim()),
      ('CCA3', (country?.cca3 ?? '').trim()),
      ('CCN3', (country?.ccn3 ?? '').trim()),
      ('CIOC', (country?.cioc ?? '').trim()),
      ('FIFA', (country?.fifa ?? '').trim()),
      ('Status', (country?.status ?? '').trim()),
    ];
  }

  static List<(String, String)> geoItems(CountryDto? country) {
    return <(String, String)>[
      (
        'Lat/Lng',
        (country?.latlng ?? const <double>[])
            .map((e) => e.toStringAsFixed(4))
            .join(', '),
      ),
      (
        'Capital Lat/Lng',
        (country?.capitalInfo?.latlng ?? const <double>[])
            .map((e) => e.toStringAsFixed(4))
            .join(', '),
      ),
      ('Landlocked', _boolText(country?.landlocked)),
      ('Independiente', _boolText(country?.independent)),
      ('Miembro ONU', _boolText(country?.unMember)),
    ];
  }

  static List<String> timezones(CountryDto? country) {
    return country?.timezones ?? const <String>[];
  }

  static List<String> continents(CountryDto? country) {
    return country?.continents ?? const <String>[];
  }

  static List<String> borders(CountryDto? country) {
    return country?.borders ?? const <String>[];
  }

  static List<String> currencies(CountryDto? country) {
    return country?.currencies?.values
            .map((c) => (c.name ?? '').trim())
            .where((s) => s.isNotEmpty)
            .toList(growable: false) ??
        const <String>[];
  }

  static List<String> languages(CountryDto? country) {
    return country?.languages?.values
            .map((s) => s.trim())
            .where((s) => s.isNotEmpty)
            .toList(growable: false) ??
        const <String>[];
  }

  static String _boolText(bool? value) {
    if (value == null) return '';
    return value ? 'Sí' : 'No';
  }
}
