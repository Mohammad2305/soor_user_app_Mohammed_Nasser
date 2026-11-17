class AppUser {
  final String fullName;
  final String password;
  final String email;
  final String mobileNumber;
  List orders;

  AppUser({
    required this.email,
    required this.fullName,
    required this.password,
    required this.mobileNumber,
    this.orders = const [],
  });
}