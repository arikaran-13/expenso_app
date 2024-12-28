
class CreateAccountResponse{
  late String _username;
  late num _totalBalance;

  set username(String username) => _username = username;
  set totalBalance(num balance) => _totalBalance = balance;

  String get username => _username;
  num get totalBalance => _totalBalance;

  static CreateAccountResponse fromJson(Map<String,dynamic>json){
    var newAccount = CreateAccountResponse();
    newAccount.username = json['username'];
    newAccount.totalBalance = json['totalBalance'];
    return newAccount;
  }

}