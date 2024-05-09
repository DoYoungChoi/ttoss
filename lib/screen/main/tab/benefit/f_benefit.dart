import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/benefit/benefits_dummy.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:flutter/material.dart';

import 'w_point_button.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          const EdgeInsets.only(bottom: MainScreenState.bottomNavigationHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Height(28),
          '혜택'.text.white.bold.size(18).make(),
          const Height(28),
          const PointButton(point: 569),
          height16,
          '혜택 더 받기'.text.white.bold.size(16).make(),
          ...benefits.map((e) => BenefitItem(benefit: e)).toList(),
        ],
      ),
    ).pSymmetric(h: 20);
  }
}
