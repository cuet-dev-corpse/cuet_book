mixin ValidationMixin {
  String? studentIdValidator(value) {
    if (value == null || value.isEmpty) {
      return "Please enter your Student ID";
    }
    if (int.tryParse(value) == null) {
      return "Student ID must contain digits only";
    }
    if (value.length != 7) {
      return "Student ID must be 7 digits long";
    }
    return null;
  }

  String? passwordValidator(value) {
    if (value == null || value.length < 6) {
      return "Password must be at least 6 characters long";
    }
    return null;
  }
}
