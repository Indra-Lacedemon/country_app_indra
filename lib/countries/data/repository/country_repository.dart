import 'package:country_app_indra/countries/data/models/country_dto.dart';
import 'package:country_app_indra/countries/data/repository/country_api_respository.dart';

abstract class CountryRepository {
  Future<CountryDto?> getCountryByName(String name);
}

class CountryApiRepositoryImpl implements CountryRepository {
  const CountryApiRepositoryImpl();

  @override
  Future<CountryDto?> getCountryByName(String name) {
    return CountryApiRespository.getCountryObject(name);
  }
}

