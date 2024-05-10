import 'package:fast_app_base/common/util/local_json.dart';
import 'package:get/get.dart';

import '../vo/vo_simple_stock.dart';

abstract mixin class SearchStockDataProvider {
  late final searchData = Get.find<SearchStockData>();
}

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList =
        await LocalJson.getObjectList<SimpleStock>('/json/stock_list.json');
    stocks.addAll(jsonList);
  }

  void search(String keyword) {
    if (keyword.isEmpty) {
      autoCompleteList.clear();
      return;
    }

    autoCompleteList.value =
        stocks.where((e) => e.name.contains(keyword)).toList();
  }

  void addHistory(SimpleStock stock) {
    searchHistoryList.add(stock.name);
  }

  void removeHistory(String stockName) {
    searchHistoryList.remove(stockName);
  }
}
