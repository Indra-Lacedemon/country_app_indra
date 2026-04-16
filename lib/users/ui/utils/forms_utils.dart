class FormsUtils {
  // Regex centralizadas (sin lógica de UI).
  static final RegExp emailRegExp = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]{2,}$');

  // Mínimo 6 caracteres; puedes endurecerla más adelante (mayúsculas, etc.)
  static final RegExp passwordRegExp = RegExp(r'^.{6,}$');

  static String? validateEmail(String? value) {
    final v = (value ?? '').trim();
    if (v.isEmpty) return 'Introduce tu correo';
    if (!emailRegExp.hasMatch(v)) return 'Correo no válido';
    return null;
  }

  static String? validatePassword(String? value) {
    final v = value ?? '';
    if (v.isEmpty) return 'Introduce tu contraseña';
    if (!passwordRegExp.hasMatch(v)) return 'Mínimo 6 caracteres';
    return null;
  }
}
