import 'package:country_app_indra/countries/cubits/country_cubit.dart';
import 'package:country_app_indra/initial/cubits/start_app_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() async {
  await registerCubits();
}

registerCubits() {
  if (!locator.isRegistered<CountryCubit>()) {
    locator.registerLazySingleton(() => CountryCubit());
  }
  if (!locator.isRegistered<StartAppCubit>()) {
    locator.registerLazySingleton(() => StartAppCubit());
  }
}
