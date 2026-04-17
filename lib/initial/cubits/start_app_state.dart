import 'package:country_app_indra/users/data/models/auth_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'start_app_state.freezed.dart';

@freezed
abstract class StartAppState with _$StartAppState {
  const factory StartAppState({
    @Default(null) bool? isLogged,
    @Default(null) AuthDTO? authDTO,
  }) = _StartAppState;
}
