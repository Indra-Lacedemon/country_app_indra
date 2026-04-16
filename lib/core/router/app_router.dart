import 'package:country_app_indra/ui/pages/country_details_page.dart';
import 'package:country_app_indra/ui/pages/home_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes { home, countryDetails }

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) {
        return HomePage();
      },
      routes: [
        GoRoute(
          path: 'country',
          name: AppRoutes.countryDetails.name,
          builder: (context, state) {
            return CountryDetailsPage();
          },
        ),
      ],
    ),
  ],
);
