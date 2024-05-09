import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/round_button_theme.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_round_container.dart';
import 'package:fast_app_base/screen/dialog/d_message.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/home/bank_accounts_dummy.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_big_button.dart';
import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';
import '../../w_ttoss_app_bar.dart';
import 'w_bank_account.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: TtossAppBar.appBarHeight,
            onRefresh: () async {
              await sleepAsync(500.ms);
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                top: TtossAppBar.appBarHeight,
                bottom: MainScreenState.bottomNavigationHeight + 30,
              ),
              child: Column(
                children: [
                  BigButton('토스뱅크', onTap: () {
                    context.showSnackbar('토스뱅크를 눌렀어요.');
                  }),
                  height8,
                  RoundContainer(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      '자산'.text.bold.white.size(16).make(),
                      height12,
                      ...bankAccounts.map((e) => BankAccountWidget(e)).toList()
                    ],
                  ))
                ],
              ).pSymmetric(h: 20),
            ),
          ),
          TtossAppBar(),
        ],
      ),
    );
  }
}
