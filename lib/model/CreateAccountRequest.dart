
class CreateAccountRequest{
  late String _username;
  late String _password;

  set username(String username) => this._username = username;
  set password(String password) => this._password = password;

  String get username => _username;
  String get password => _password;

  Map<String,dynamic>toJson(){
    return {
      "username": _username,
      "password": _password
    };
  }

}