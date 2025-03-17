import 'BankAccount.dart';

class Bank {
  List<BankAccount> accounts = [];

  void createAccount(
    int accountNumber,
    String holderName,
    double initialbalance,
  ) {
    if (accounts.any((account) => account.accountNumber == accountNumber)) {
      print('Failed process: $accountNumber already exists.');
    } else {
      BankAccount newAccount = BankAccount(accountNumber, holderName);
      accounts.add(newAccount);
      print('Account created successfully.');
    }
  }

  void display() {
    for (var element in accounts) {
      print('Account Number:${element.accountNumber}');
      print('Holder Name is:${element.holderName}');
      print('Balance:${element.balance}');
      print('Transactions of this account are:${element.transactions}');
    }
  }
}
