import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:country_app_indra/data/models/country_dto.dart';

part 'country_state.freezed.dart';

@freezed
abstract class CountryState with _$CountryState {
  const factory CountryState({@Default(null) CountryDto? selectedCountry}) =
      _CountryState;
}
