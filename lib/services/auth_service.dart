class AuthService {
  static bool _isAuthenticated = false;

  static bool get isAuthenticated => _isAuthenticated;

  static Future<bool> login(String email, String password) async {
    // Implement your login logic here
    _isAuthenticated = true;
    return true;
  }

  static Future<bool> register(String email, String password) async {
    // Implement your registration logic here
    _isAuthenticated = true;
    return true;
  }

  static void logout() {
    _isAuthenticated = false;
  }
}
