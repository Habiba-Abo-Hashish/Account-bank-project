import 'BankAccount.dart';
import 'Bank.dart';

class Currentaccount extends BankAccount {
  double transactionFee = 55.0;
  double _balance = 50.0;
  Currentaccount(int accountNumber, String holderName)
    : super(accountNumber, holderName);
  @override
  set withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      _balance -= (amount + transactionFee);
      transactions.add('$amount was deducted with $transactionFee Fees');
    } else {
      print('Insufficient Balance :) ');
    }
  }
}
