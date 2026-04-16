import 'package:country_app_indra/ui/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return HomePage();
      },
    ),
  ],
);
