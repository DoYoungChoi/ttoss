import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import 'vo/vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;
  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          benefit.imagePath,
          width: 50,
          height: 50,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              benefit.subTitle.text.size(13).make(),
              height8,
              benefit.title.text
                  .color(context.appColors.blueButtonBackground)
                  .size(13)
                  .make(),
            ],
          ),
        )
      ],
    ).pSymmetric(v: 12);
  }
}
