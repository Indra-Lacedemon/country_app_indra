import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:country_app_indra/countries/data/models/country_dto.dart';

part 'start_app_state.freezed.dart';

@freezed
abstract class StartAppState with _$StartAppState {
  const factory StartAppState({@Default(null) bool? isLogged}) = _StartAppState;
}
