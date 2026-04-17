import 'package:country_app_indra/initial/cubits/start_app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartAppCubit extends Cubit<StartAppState> {
  StartAppCubit() : super(const StartAppState());

  Future<void> init() async {
    // Aquí puedes realizar cualquier inicialización necesaria, como verificar el estado de inicio de sesión del usuario.
    // Por ejemplo, podrías consultar una base de datos local o una API para determinar si el usuario ya ha iniciado sesión.
    // Luego, actualiza el estado con la información obtenida.
    emit(
      state.copyWith(isLogged: true),
    ); // Ejemplo: suponemos que el usuario ya ha iniciado sesión.
  }
}
