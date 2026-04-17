import 'package:country_app_indra/users/data/models/auth_dto.dart';

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
}
