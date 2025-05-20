class AppRegex {
  static bool isEmailValid(String email) {
    String pattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  static bool isPhoneNumberValid(String phoneNumber) {
    String pattern = r'^\+?[0-9]{10,15}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(phoneNumber);
  }

  static bool isPasswordValid(String password) {
    String pattern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(password);
  }

  static bool isUsernameValid(String username) {
    String pattern = r'^[a-zA-Z0-9_]{3,16}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(username);
  }

}

