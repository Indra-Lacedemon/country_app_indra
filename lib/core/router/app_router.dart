import 'dart:async';

import 'package:country_app_indra/core/locator/locator.dart';
import 'package:country_app_indra/countries/ui/pages/country_details_page.dart';
import 'package:country_app_indra/countries/ui/pages/country_home_page.dart';
import 'package:country_app_indra/initial/cubits/start_app_cubit.dart';
import 'package:country_app_indra/initial/ui/pages/initial_page.dart';
import 'package:country_app_indra/users/ui/pages/login_page.dart';
import 'package:country_app_indra/users/ui/pages/profile_page.dart';
import 'package:country_app_indra/users/ui/pages/register_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  initial,
  login,
  resgister,
  countryHome,
  countryDetails,
  profile,
}

final List<String> routesWithAuth = [
  '/country',
  '/country/countryDetails',
  '/country/profile',
];

final List<String> routesWithOutAuth = ['/', '/login', '/register'];

final useBloc = locator<StartAppCubit>();

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  refreshListenable: GoRouterRefreshStream(useBloc.stream),
  redirect: (context, state) {
    if (state.uri.toString() == '/' && useBloc.state.isLogged == false) {
      return '/login';
    }
    if (state.uri.toString() == '/' && useBloc.state.isLogged == true) {
      return '/country';
    }

    if (useBloc.state.isLogged == false &&
        routesWithAuth.contains(state.uri.toString())) {
      return '/login';
    }

    if (useBloc.state.isLogged == true &&
        routesWithOutAuth.contains(state.uri.toString())) {
      return '/country';
    }
    // Aquí puedes implementar la lógica de redirección basada en el estado de inicio de sesión del usuario.
    // Por ejemplo, si el usuario no ha iniciado sesión, redirigirlo a la página de inicio de sesión.
    // Si el usuario ya ha iniciado sesión, permitirle acceder a las rutas protegidas.
    // Puedes usar un Bloc o Cubit para obtener el estado de inicio de sesión del usuario.
    // Ejemplo:
    // final isLogged = context.read<StartAppCubit>().state.isLogged;
    // if (!isLogged && state.subloc != '/login') {
    //   return '/login';
    // }
    // return null; // Permitir la navegación normal si no se necesita redirección.
    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.initial.name,
      builder: (context, state) {
        return InitialPage();
      },
    ),
    GoRoute(
      path: '/login',
      name: AppRoutes.login.name,
      builder: (context, state) {
        return LoginPage();
      },
    ),
    GoRoute(
      path: '/register',
      name: AppRoutes.resgister.name,
      builder: (context, state) {
        return RegisterPage();
      },
    ),
    GoRoute(
      path: '/country',
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
        GoRoute(
          path: 'profile',
          name: AppRoutes.profile.name,
          builder: (context, state) {
            return ProfilePage();
          },
        ),
      ],
    ),
  ],
);

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (event) => notifyListeners(),
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
