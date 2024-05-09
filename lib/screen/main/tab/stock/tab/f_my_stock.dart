import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
import 'package:fast_app_base/common/widget/w_round_container.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/w_interest_stock_list.dart';
import 'package:flutter/material.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context),
        height12,
        getMyStock(context),
      ],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: context.appColors.roundedLayoutBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height16,
          '계좌'.text.make(),
          Row(
            children: [
              '443원'.text.size(24).bold.make(),
              Arrow(),
              emptyExpanded,
              RoundContainer(
                child: '채우기'.text.size(12).make(),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                radius: 8,
                backgroundColor: context.appColors.buttonBackground,
              )
            ],
          ),
          const Line(),
          height8,
          LongButton(title: '주문내역', onTap: () {}),
          LongButton(title: '판매수익', onTap: () {}),
        ],
      ));

  Widget getMyStock(BuildContext context) => Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // color: context.appColors.roundedLayoutBackground,
            child: Column(
              children: [
                height16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    '관심주식'.text.bold.make(),
                    '편집하기'.text.color(context.appColors.lessImportant).make(),
                  ],
                ),
                height16,
                Tap(
                  onTap: () {
                    context.showSnackbar('기본');
                  },
                  child: Row(
                    children: [
                      '기본'.text.make(),
                      emptyExpanded,
                      const Arrow(direction: AxisDirection.up),
                    ],
                  ),
                )
              ],
            ),
          ),
          InterestStockList(),
        ],
      );
}
