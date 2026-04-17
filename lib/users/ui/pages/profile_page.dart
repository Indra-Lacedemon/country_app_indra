import 'package:country_app_indra/core/locator/locator.dart';
import 'package:country_app_indra/initial/cubits/start_app_cubit.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            locator<StartAppCubit>().logOut();
          },
          child: Text("Cerrar Sesión"),
        ),
      ),
    );
  }
}
