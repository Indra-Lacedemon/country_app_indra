import 'package:country_app_indra/core/locator/locator.dart';
import 'package:country_app_indra/core/router/app_router.dart';
import 'package:country_app_indra/cubits/country_cubit.dart';
import 'package:country_app_indra/cubits/country_state.dart';
import 'package:country_app_indra/ui/utils/country_utils.dart';
import 'package:country_app_indra/ui/widgets/country_detail_card.dart';
import 'package:country_app_indra/ui/widgets/featured_countries_selector.dart';
import 'package:country_app_indra/ui/widgets/home_background.dart';
import 'package:country_app_indra/ui/widgets/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> fetchCountry(String name) async {
      // UI-only loading feedback, sin tocar el cubit/state.
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (_) => const Center(child: CircularProgressIndicator()),
      );
      try {
        await locator<CountryCubit>().getCountryByName(name);
      } finally {
        if (context.mounted) Navigator.of(context).pop();
      }
    }

    return BlocBuilder<CountryCubit, CountryState>(
      bloc: locator<CountryCubit>(),
      builder: (context, state) {
        final country = state.selectedCountry;

        final title = country?.name?.official ?? 'Selecciona un país';
        final subtitle = country?.name?.common ?? 'Elige uno de los de abajo';

        return Scaffold(
          body: HomeBackground(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    HomeHeader(
                      flag: country?.flag ?? '🌍',
                      title: title,
                      subtitle: subtitle,
                    ),
                    const SizedBox(height: 16),
                    FeaturedCountriesSelector(
                      countries: CountryUtils.featuredCountries,
                      selectedKey: country?.name?.common,
                      onSelected: fetchCountry,
                    ),
                    const SizedBox(height: 14),
                    CountryDetailCard(
                      country: country,
                      onDemoPressed: () =>
                          context.goNamed(AppRoutes.countryDetails.name),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
