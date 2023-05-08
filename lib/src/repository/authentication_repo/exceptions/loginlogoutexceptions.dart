class LoginLogoutException {
  final String message;

  LoginLogoutException([this.message = "An unknown error occurred."]);

  factory LoginLogoutException.code(String code) {
    switch (code) {
      case 'weak_password':
        return LoginLogoutException('Please enter a strong password.');
      case 'invalid_email':
        return LoginLogoutException('Enter a valid email.');
      case 'email_already_in_use':
        return LoginLogoutException('Use another email. This one is already used.');
      case 'operation_not_allowed':
        return LoginLogoutException('This operation is not allowed.');
      default:
        return LoginLogoutException();
    }
  }
}
