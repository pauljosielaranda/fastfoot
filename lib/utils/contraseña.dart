class PasswordValidation {
  static bool validate(String contrasena, String contrasena2) {
    if (contrasena.compareTo(contrasena2) == 0) return true;
    return false;
  }
}
