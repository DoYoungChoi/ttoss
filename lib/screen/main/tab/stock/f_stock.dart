import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart';

import 'tab/f_my_stock.dart';
import 'tab/f_todays_discovery.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.appColors.roundedLayoutBackground,
          pinned: true,
          actions: [
            ImageButton(
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () {
                Nav.push(const SearchStockScreen());
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {
                context.showSnackbar('캘린더');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {
                context.showSnackbar('설정');
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              title,
              tabbar,
              if (currentIndex == 0)
                const MyStockFragment()
              else
                const TodaysDiscoveryFragment()
            ],
          ),
        ),
      ],
    );
  }

  Widget get title => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            '토스증권'.text.size(20).bold.make(),
            width16,
            'SAP 500'
                .text
                .size(13)
                .bold
                .color(context.appColors.lessImportant)
                .make(),
            width8,
            3919.29
                .toComma()
                .text
                .size(13)
                .bold
                .color(context.appColors.plus)
                .make(),
          ],
        ).pOnly(left: 20),
      );

  Widget get tabbar => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            TabBar(
              onTap: (index) => {setState(() => currentIndex = index)},
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              labelPadding: const EdgeInsets.symmetric(vertical: 20),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              indicatorColor: Colors.white,
              controller: tabController,
              tabs: [
                '내 주식'.text.make(),
                '오늘의 발견'.text.make(),
              ],
            ),
            const Line(),
          ],
        ),
      );
}
