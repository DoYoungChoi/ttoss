import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank.dart';

class BankAccount {
  final Bank bank;
  final String accountNumber;
  final String accountOwnerName;
  int balance;
  String? accountTypeName;

  BankAccount(
      this.bank, this.accountNumber, this.accountOwnerName, this.balance,
      [this.accountTypeName]);
}
