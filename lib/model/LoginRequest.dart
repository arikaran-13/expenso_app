

class LoginRequest{

  late String _username;
  late String _password;

  String get getUsername => _username;
  String get getPassword => _password;

  set setUsername(String username)=> _username = username;
  set setPassword(String password)=> _password = password;

  Map<String, dynamic> toJson() {
    return {
      "username": _username,
      "password": _password,
    };
  }

}