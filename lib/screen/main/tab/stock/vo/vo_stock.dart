import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/vo_popular_stock.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Stock extends PopularStock {
  final String imagePath;

  Stock({
    required this.imagePath,
    required super.yesterdayClosePrice,
    required super.currentPrice,
    required super.name,
  });

  double get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .toPrecision(2);

  String get todayPercentageString => '$symbol$todayPercentage%';
  Color getPriceColor(BuildContext context) => isPlus
      ? context.appColors.plus
      : isMinus
          ? context.appColors.minus
          : context.appColors.lessImportant;

  String get symbol => isPlus ? "+" : "";
  bool get isPlus => currentPrice > yesterdayClosePrice;
  bool get isMinus => currentPrice < yesterdayClosePrice;
}
