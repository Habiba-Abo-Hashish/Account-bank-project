class BankAccount {
  int accountNumber;
  String holderName;
  double _balance = 0.0;
  List<String> transactions = [];

  BankAccount(this.accountNumber, this.holderName);
  set Balance(double newbalance) {
    if (newbalance >= 0) {
      _balance = newbalance;
      transactions.add('the amount has been deposited:$_balance');
    } else {
      print("Deposit amount must be positive");
    }
  }

  set withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      transactions.add("The amount has been withdrawn:$amount");
    } else {
      print('invalid amount');
    }
  }

  double get balance {
    return _balance;
  }
}

class Bank {
  List<BankAccount> accounts = [];
  void addAccount(int accountNumber, String holderName) {
    var newAccount = BankAccount(accountNumber, holderName);
    accounts.add(newAccount);
    print('A new account has been added to ${newAccount.holderName}');
  }
}
