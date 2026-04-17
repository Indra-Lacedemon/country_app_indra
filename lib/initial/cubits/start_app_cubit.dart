import 'package:country_app_indra/initial/cubits/start_app_state.dart';
import 'package:country_app_indra/users/data/models/auth_dto.dart';
import 'package:country_app_indra/users/data/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartAppCubit extends Cubit<StartAppState> {
  StartAppCubit() : super(const StartAppState());

  Future<void> init() async {
    // Aquí puedes realizar cualquier inicialización necesaria, como verificar el estado de inicio de sesión del usuario.
    // Por ejemplo, podrías consultar una base de datos local o una API para determinar si el usuario ya ha iniciado sesión.
    // Luego, actualiza el estado con la información obtenida.

    final bool isLogged = await AuthRepository.getDataRegister();
    emit(
      state.copyWith(isLogged: isLogged),
    ); // Ejemplo: suponemos que el usuario ya ha iniciado sesión.
  }

  Future<void> logOut() async {
    await AuthRepository.removeDataRegister();
    emit(state.copyWith(isLogged: false));
  }

  Future<void> logIn({required String email, required String password}) async {
    AuthDTO? myUser = await AuthRepository.signIn(
      email: email,
      password: password,
    );

    if (myUser != null) {
      await AuthRepository.saveDataRegister(true);
    }

    emit(state.copyWith(isLogged: true, authDTO: myUser));
  }

  Future<void> register({
    required String email,
    required String password,
  }) async {
    AuthDTO? myUser = await AuthRepository.register(
      email: email,
      password: password,
    );
    if (myUser != null) {
      await AuthRepository.saveDataRegister(true);
    }
    emit(state.copyWith(isLogged: true, authDTO: myUser));
  }
}
