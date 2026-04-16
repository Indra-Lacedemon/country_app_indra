import 'package:country_app_indra/cubits/country_state.dart';
import 'package:country_app_indra/data/repository/country_api_respository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryCubit extends Cubit<CountryState> {
  CountryCubit() : super(const CountryState());

  Future<void> getCountryByName(String name) async {
    final response = await CountryApiRespository.getCountryObject(name);

    emit(state.copyWith(selectedCountry: response));
  }
}
