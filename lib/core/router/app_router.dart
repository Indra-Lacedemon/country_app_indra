import 'package:country_app_indra/countries/ui/pages/country_details_page.dart';
import 'package:country_app_indra/countries/ui/pages/country_home_page.dart';
import 'package:country_app_indra/initial/ui/pages/initial_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes { initial, login, resgister, countryHome, countryDetails }

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.initial.name,
      builder: (context, state) {
        return InitialPage();
      },
      routes: [
        GoRoute(
          path: 'login',
          name: AppRoutes.login.name,
          builder: (context, state) {
            return CountryDetailsPage();
          },
        ),
        GoRoute(
          path: 'register',
          name: AppRoutes.resgister.name,
          builder: (context, state) {
            return CountryDetailsPage();
          },
        ),
        GoRoute(
          path: 'country',
          name: AppRoutes.countryHome.name,
          builder: (context, state) {
            return CountryHomePage();
          },
          routes: [
            GoRoute(
              path: 'countryDetails',
              name: AppRoutes.countryDetails.name,
              builder: (context, state) {
                return CountryDetailsPage();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
