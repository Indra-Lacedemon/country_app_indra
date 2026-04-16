import 'package:country_app_indra/core/locator/locator.dart';
import 'package:country_app_indra/core/router/app_router.dart';
import 'package:country_app_indra/countries/cubits/country_cubit.dart';
import 'package:country_app_indra/countries/cubits/country_state.dart';
import 'package:country_app_indra/countries/ui/utils/country_utils.dart';
import 'package:country_app_indra/countries/ui/widgets/chips_wrap.dart';
import 'package:country_app_indra/countries/ui/widgets/country_details_header.dart';
import 'package:country_app_indra/countries/ui/widgets/details_section_card.dart';
import 'package:country_app_indra/countries/ui/widgets/home_background.dart';
import 'package:country_app_indra/countries/ui/widgets/key_value_wrap.dart';
import 'package:country_app_indra/countries/ui/widgets/network_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CountryDetailsPage extends StatelessWidget {
  const CountryDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryCubit, CountryState>(
      bloc: locator<CountryCubit>(),
      builder: (context, state) {
        final theme = Theme.of(context);
        final flag = CountryUtils.flag(state.selectedCountry);
        final officialName = CountryUtils.officialName(state.selectedCountry);
        final commonName = CountryUtils.commonName(state.selectedCountry);
        final codeLine = CountryUtils.codeLine(state.selectedCountry);
        final overviewItems = CountryUtils.overviewItems(state.selectedCountry);
        final codesItems = CountryUtils.codesItems(state.selectedCountry);
        final geoItems = CountryUtils.geoItems(state.selectedCountry);
        final timezones = CountryUtils.timezones(state.selectedCountry);
        final continents = CountryUtils.continents(state.selectedCountry);
        final borders = CountryUtils.borders(state.selectedCountry);
        final currencies = CountryUtils.currencies(state.selectedCountry);
        final languages = CountryUtils.languages(state.selectedCountry);

        return Scaffold(
          appBar: AppBar(
            title: const Text('Detalles'),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => context.goNamed(AppRoutes.countryHome.name),
              icon: const Icon(Icons.arrow_back),
            ),
          ),

          extendBodyBehindAppBar: true,
          body: HomeBackground(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 72, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CountryDetailsHeader(
                      flag: flag,
                      officialName: officialName,
                      commonName: commonName,
                      codeLine: codeLine,
                    ),
                    const SizedBox(height: 14),
                    DetailsSectionCard(
                      title: 'Resumen',
                      subtitle: 'Datos principales del país',
                      child: KeyValueWrap(items: overviewItems),
                    ),
                    const SizedBox(height: 14),
                    DetailsSectionCard(
                      title: 'Códigos y estado',
                      subtitle: 'Identificadores y metadata',
                      child: KeyValueWrap(items: codesItems),
                    ),
                    const SizedBox(height: 14),
                    DetailsSectionCard(
                      title: 'Geografía',
                      subtitle: 'Coordenadas y características',
                      child: KeyValueWrap(items: geoItems),
                    ),
                    const SizedBox(height: 14),
                    DetailsSectionCard(
                      title: 'Husos, continentes y fronteras',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Husos horarios',
                            style: theme.textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ChipsWrap(values: timezones),
                          const SizedBox(height: 14),
                          Text(
                            'Continentes',
                            style: theme.textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ChipsWrap(values: continents),
                          const SizedBox(height: 14),
                          Text(
                            'Fronteras',
                            style: theme.textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ChipsWrap(values: borders),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    DetailsSectionCard(
                      title: 'Idiomas y moneda',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Idiomas',
                            style: theme.textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ChipsWrap(values: languages),
                          const SizedBox(height: 14),
                          Text(
                            'Monedas',
                            style: theme.textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ChipsWrap(values: currencies),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    DetailsSectionCard(
                      title: 'Enlaces y assets',
                      subtitle: 'Mapas y recursos visuales',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          KeyValueWrap(
                            items: [
                              (
                                'Google Maps',
                                (state.selectedCountry?.maps?.googleMaps ?? '')
                                    .trim(),
                              ),
                              (
                                'OpenStreetMap',
                                (state.selectedCountry?.maps?.openStreetMaps ??
                                        '')
                                    .trim(),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          Row(
                            children: [
                              Expanded(
                                child: NetworkImageCard(
                                  title: 'Bandera',
                                  url: state.selectedCountry?.flags?.png,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: NetworkImageCard(
                                  title: 'Escudo',
                                  url: state.selectedCountry?.coatOfArms?.png,
                                  height: 130,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
