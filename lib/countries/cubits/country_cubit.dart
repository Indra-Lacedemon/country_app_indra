import 'package:country_app_indra/countries/cubits/country_state.dart';
import 'package:country_app_indra/countries/data/repository/country_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryCubit extends Cubit<CountryState> {
  CountryCubit({CountryRepository? repository})
      : _repository = repository ?? const CountryApiRepositoryImpl(),
        super(const CountryState());

  final CountryRepository _repository;

  Future<void> getCountryByName(String name) async {
    final response = await _repository.getCountryByName(name);

    emit(state.copyWith(selectedCountry: response));
  }
}
