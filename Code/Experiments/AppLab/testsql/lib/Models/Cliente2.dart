class Cliente {
  // Account fields
  String email = "";
  String password = "";

  Cliente({email, password}) {
    this.email = email;
    this.password = password;
  }

  factory Cliente.fromMap(Map<String, dynamic> json) => new Cliente(
        email: json['email'],
        password: json['name'],
      );

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }
}
