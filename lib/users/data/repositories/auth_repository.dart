import 'package:country_app_indra/users/data/models/auth_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  static Future<AuthDTO?> signIn({
    required String email,
    required String password,
  }) async {
    AuthDTO? authDTO;
    try {
      authDTO = AuthDTO(email: email, id: '123456');
      await Future.delayed(const Duration(seconds: 1));
      return authDTO;
    } catch (e) {
      return authDTO;
    }
  }

  static Future<AuthDTO?> register({
    required String email,
    required String password,
  }) async {
    AuthDTO? authDTO;
    try {
      authDTO = AuthDTO(email: email, id: '123456');
      await Future.delayed(const Duration(seconds: 1));
      return authDTO;
    } catch (e) {
      return authDTO;
    }
  }

  static Future<void> saveDataRegister(bool isLogged) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Aquí puedes implementar la lógica para guardar el estado de inicio de sesión del usuario.
    // Por ejemplo, puedes usar SharedPreferences para almacenar un valor booleano que indique si el usuario ha iniciado sesión o no.
    // Ejemplo:
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogged', isLogged);
  }

  static Future<bool> getDataRegister() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Aquí puedes implementar la lógica para obtener el estado de inicio de sesión del usuario.
    // Por ejemplo, puedes usar SharedPreferences para recuperar el valor booleano que indica si el usuario ha iniciado sesión o no.
    // Ejemplo:
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? isLogged = prefs.getBool('isLogged');

    return isLogged ?? false;
  }
}
