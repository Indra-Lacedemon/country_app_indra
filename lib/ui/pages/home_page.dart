import 'package:country_app_indra/core/locator/locator.dart';
import 'package:country_app_indra/cubits/country_cubit.dart';
import 'package:country_app_indra/cubits/country_state.dart';
import 'package:country_app_indra/data/repository/country_api_respository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryCubit, CountryState>(
      bloc: locator<CountryCubit>(),
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.selectedCountry?.name.official ?? 'Pais no encontrado',
                ),
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () async {
                    await locator<CountryCubit>().getCountryByName("peru");
                  },
                  child: const Text("Pulsame"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
