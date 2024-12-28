
class TransactionResponse{
   String? _category;
   String? _transactionType;
   String? _amount;
   String? _transactionCreatedDate;
   String? _transactionUpdatedDate;
   String? _username;
   String? _reason;

   String get category => _category!;
   String get transactionType => _transactionType!;
   String get amount => _amount!;
   String get transactionCreatedDate => _transactionCreatedDate!;
   String get transactionUpdatedDate => _transactionUpdatedDate!;
   String get username => _username!;
   String get reason => _reason!;

   set category(String categoryName)=> _category=categoryName;
   set transactionType(String transactionType)=> _transactionType = transactionType;

}