class ValidatorHelper {
  static final RegExp passwordRegEx = RegExp(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$',
  );

  static final RegExp upperCaseRegEx = RegExp(r'[A-Z]');

  static final RegExp lowerCaseRegEx = RegExp(r'[a-z]');

  static final RegExp numberRegEx = RegExp(r'[0-9]');

  static final RegExp nameRegEx = RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚñÑüÜ\s]+$');

  static final RegExp emailRegEx = RegExp(
    r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
  );

  RegExp mobileRegEx = RegExp(r'^3[0-9]{9}$');

  static final RegExp documentRegEx = RegExp(r'^\d{6,11}$');

  String? validateName(String? value) {
    if (value == null || value.isEmpty || value.length < 4) {
      return 'Ingresa tú nombre';
    }
    if (!nameRegEx.hasMatch(value)) {
      return 'Ingresa un nombre valido';
    }

    return null;
  }

  String? validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Completa este campo';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (!(value.contains('@') && value.contains('.'))) {
      return null;
    }

    if (!emailRegEx.hasMatch(value)) {
      return 'Error de formato';
    }
    return null;
  }

  String? validatePhone(String? value) {
    final String? trimmedValue = value?.replaceAll(RegExp(r'\s+'), '');

    if (value == null ||
        value.isEmpty ||
        !RegExp(r'^(?:\+?56)?9\d{8}$').hasMatch(trimmedValue ?? '')) {
      return 'El número ingresado es incorrecto';
    }

    return null;
  }

  String? validateBirthDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Fecha no válida';
    }

    return null;
  }

  String? validateDocument(String? value) {
    if (value == null || value.isEmpty) {
      return 'Introduzca un documento válido';
    }

    if (!documentRegEx.hasMatch(value)) {
      return 'Documento inválido';
    }
    return null;
  }

  String? validatePassword(String? value, {String? confirmPassword}) {
    if (value == null || value.isEmpty) {
      return 'Ingresa una contraseña';
    }
    if (value.length <= 8) {
      return 'Asegurate de crear una contraseña con al menos 8 caracteres.';
    }
    final RegExp noSpecialChars = RegExp(r'^[A-Za-z0-9]+$');
    if (!noSpecialChars.hasMatch(value)) {
      return 'Error de formato';
    }

    if (confirmPassword != null && value != confirmPassword) {
      return 'La contraseña no coincide con la anterior';
    }

    return null;
  }

  String? validateOnlyNumbers(String? value) {
    if (value == null || value.isEmpty) {
      return 'Completa este campo';
    }

    final String cleanValue = value.replaceAll(' ', '');
    final RegExp onlyNumbers = RegExp(r'^\d+$');
    if (!onlyNumbers.hasMatch(cleanValue) || cleanValue.length < 6) {
      return 'El número ingresado es incorrecto';
    }
    return null;
  }

  String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingresa tu apellido.';
    }

    final String trimmedValue = value.trim();

    if (trimmedValue.isEmpty) {
      return 'El apellido no puede estar vacío.';
    }

    if (trimmedValue != value) {
      return 'Este campo es obligatorio.';
    }

    if (!nameRegEx.hasMatch(trimmedValue)) {
      return 'Solo se permiten letras en el apellido.';
    }

    if (RegExp(r'[0-9]').hasMatch(trimmedValue)) {
      return 'Tu apellido no puede contener números ni caracteres especiales.';
    }

    if (RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(trimmedValue)) {
      return 'Revisa que el apellido tenga únicamente letras.';
    }

    if (trimmedValue.length < 2) {
      return 'El apellido debe tener al menos 2 caracteres.';
    }

    if (trimmedValue.length > 50) {
      return 'El apellido no puede superar los 50 caracteres.';
    }

    if (trimmedValue.startsWith(' ') || trimmedValue.endsWith(' ')) {
      return 'No uses espacios al inicio o al final.';
    }

    if (RegExp(r'\s{2,}').hasMatch(trimmedValue)) {
      return 'El apellido no puede contener múltiples espacios consecutivos.';
    }

    if (!RegExp(
      r'^[a-zA-ZáéíóúÁÉÍÓÚñÑüÜ]+(\s[a-zA-ZáéíóúÁÉÍÓÚñÑüÜ]+)*$',
    ).hasMatch(trimmedValue)) {
      return 'Verifica el formato del apellido.';
    }

    return null;
  }

  String? validateCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingresa el número de tarjeta';
    }

    final String cleanValue = value.replaceAll(' ', '');

    if (cleanValue.length != 16) {
      return 'El número de tarjeta debe tener 16 dígitos';
    }

    int sum = 0;
    bool alternate = false;

    for (int i = cleanValue.length - 1; i >= 0; i--) {
      int digit = int.parse(cleanValue[i]);

      if (alternate) {
        digit *= 2;
        if (digit > 9) {
          digit = (digit % 10) + 1;
        }
      }

      sum += digit;
      alternate = !alternate;
    }

    if (sum % 10 != 0) {
      return 'Número mal ingresado';
    }

    return null;
  }
}
