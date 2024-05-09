import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;

  const BankAccountWidget(this.account, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (account.accountTypeName ?? '${account.bank.name} 통장')
                  .text
                  .white
                  .size(12)
                  .make(),
              ('${account.balance}원').text.white.bold.size(18).make(),
            ],
          ).pSymmetric(v: 8, h: 16),
        ),
        RoundContainer(
          backgroundColor: context.appColors.buttonBackground,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          radius: 8,
          child: '송금'.text.white.make(),
        ),
      ],
    );
  }
}
