// Regular expression for validating a first name. Allows letters, spaces, and hyphens.
final RegExp firstNameRegExp = RegExp(r'^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$');

// Regular expression for validating a last name. Similar to the first name, it allows letters, spaces, and hyphens.
final RegExp lastNameRegExp = RegExp(r'^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$');

// Regular expression for validating an email address. It ensures the email has a proper structure with an "@" symbol and domain.
final RegExp emailRegExp =
    RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

// Regular expression for validating a phone number. It supports optional country code, spaces, hyphens, and dots as separators.
final RegExp phoneRegExp = RegExp(r'^(010|011|012|015)[0-9]{8}$');

// Regular expression for validating a password. It requires at least one uppercase letter, one lowercase letter, one digit, one special character, and a minimum length of 8 characters.
final RegExp passwordRegExp =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
