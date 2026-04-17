import 'package:country_app_indra/core/locator/locator.dart';
import 'package:country_app_indra/initial/cubits/start_app_cubit.dart';
import 'package:country_app_indra/initial/cubits/start_app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartAppCubit, StartAppState>(
      bloc: locator<StartAppCubit>()..init(),
      builder: (context, state) {
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
