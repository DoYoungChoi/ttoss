import 'banks_dummy.dart';
import 'vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(
    bankShinhan, '110**********', '', 3000000, '신한 주거래 우대통장(저축 예금)');
final bankAccountShinhan2 =
    BankAccount(bankShinhan, '110**********', '', 421200, '저축 예금');
final bankAccountShinhan3 =
    BankAccount(bankShinhan, '110**********', '', 21200, '월급 통장');

final bankAccountTtoss = BankAccount(bankTtoss, '4562****', '', 5000000);
final bankAccountKakao =
    BankAccount(bankKakao, '352********', '', 50000, '입출금통장');

final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountTtoss,
  bankAccountTtoss,
  bankAccountKakao,
  bankAccountKakao,
  bankAccountKakao,
];

main() {
  for (var account in bankAccounts) {
    print(account.accountNumber + ': ' + account.balance.toString());
  }
}
