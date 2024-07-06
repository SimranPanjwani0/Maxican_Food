class UserModal {
  final String email;
  final String username;
  final String password;

  UserModal(
      {required this.email, required this.username, required this.password});

  // Convert a UserModel into a Map
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'username': username,
      'password': password,
    };
  }

  // Convert a Map into a UserModel
  factory UserModal.fromMap(Map<String, dynamic> map) {
    return UserModal(
      email: map['email'],
      username: map['username'],
      password: map['password'],
    );
  }
}
