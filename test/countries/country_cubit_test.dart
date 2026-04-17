import 'package:country_app_indra/countries/cubits/country_cubit.dart';
import 'package:country_app_indra/countries/cubits/country_state.dart';
import 'package:country_app_indra/countries/data/models/country_dto.dart';
import 'package:country_app_indra/countries/data/repository/country_repository.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeCountryRepository implements CountryRepository {
  _FakeCountryRepository(this._handler);

  final Future<CountryDto?> Function(String name) _handler;

  @override
  Future<CountryDto?> getCountryByName(String name) => _handler(name);
}

void main() {
  test('initial state is CountryState() with selectedCountry null', () {
    final cubit = CountryCubit(repository: _FakeCountryRepository((_) async => null));
    addTearDown(cubit.close);

    expect(cubit.state, const CountryState(selectedCountry: null));
  });

  test('getCountryByName emits state with selectedCountry', () async {
    final peru = CountryDto(
      cca2: 'PE',
      cca3: 'PER',
      name: NameDto(common: 'Peru', official: 'Republic of Peru'),
      flag: '🇵🇪',
    );

    final cubit = CountryCubit(
      repository: _FakeCountryRepository((name) async {
        expect(name, equals('peru'));
        return peru;
      }),
    );
    addTearDown(cubit.close);

    final expectation = expectLater(
      cubit.stream,
      emitsInOrder(<CountryState>[
        CountryState(selectedCountry: peru),
      ]),
    );

    await cubit.getCountryByName('peru');
    expect(cubit.state.selectedCountry, peru);
    await expectation;
  });

  test('getCountryByName emits state with null when repository returns null', () async {
    final cubit = CountryCubit(
      repository: _FakeCountryRepository((_) async => null),
    );
    addTearDown(cubit.close);

    final expectation = expectLater(
      cubit.stream,
      emitsInOrder(<CountryState>[
        const CountryState(selectedCountry: null),
      ]),
    );

    await cubit.getCountryByName('unknown');
    expect(cubit.state.selectedCountry, isNull);
    await expectation;
  });

  test('getCountryByName propagates repository exceptions', () async {
    final cubit = CountryCubit(
      repository: _FakeCountryRepository((_) async {
        throw StateError('boom');
      }),
    );
    addTearDown(cubit.close);

    await expectLater(
      () => cubit.getCountryByName('peru'),
      throwsA(isA<StateError>()),
    );
  });
}

