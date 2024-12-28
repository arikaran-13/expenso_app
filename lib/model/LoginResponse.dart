
class LoginResponse{

  late String _username;
  late String _jwtToken;

  String get username => _username;
  String get jwtToken => _jwtToken;

  set username(String username)=> _username=username;
  set jwtToken(String jwtToken)=> _jwtToken=jwtToken;

   static LoginResponse fromJson(Map<String, dynamic> json) {
    var loginResponse = LoginResponse();
    loginResponse._username = json['username'];
    loginResponse._jwtToken = json['jwtToken'];
    return loginResponse;
  }
}