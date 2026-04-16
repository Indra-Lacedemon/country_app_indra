import 'package:country_app_indra/core/locator/locator.dart';
import 'package:country_app_indra/core/router/app_router.dart';

import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: goRouter);
  }
}
