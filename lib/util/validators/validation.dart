class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regular Expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty){
      return 'password is required.';
    }

    // Check For minimum password length
    if (value.length < 6) {
      return 'password must be at lest 6 characters long.';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'password must contain at least one number.';
    }

    //check for numbers
    if (!value.contains(RegExp(r'[0-9]'))){
      return 'password must contain at least one number.';
    }

    //check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'password must contain at least one number.';
    }

    return null;
  }

  static String? validatePHoneNumber(String? value){
    if (value == null || value.isEmpty){
      return 'phone number is required.';
    }

    // Regular expression for phone number validation (assuming a 10_digit US phone number format)
    final phoneRegexp = RegExp(r'^\d{10}$');

    if (!phoneRegexp.hasMatch(value)) {
      return'Invalid phone number format (10 digits required).';
    }
    return null;
  }

  // Add more custom validators as needed for our specific requirements.
}