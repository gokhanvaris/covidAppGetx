import 'package:covidapp/controller/api_service_controller.dart';

import 'package:covidapp/models/news_view_model.dart';

import 'package:covidapp/services/api_service.dart';
import 'package:get/get.dart';

class NewsViewController extends GetxController {
  NewsViewController() {
    _apiService = Get.find<ApiService>();
    getNewsData();
  }

  ApiService? _apiService;
  NewsViewModel? apiServiceModel;
  RxBool isLoading = false.obs;

  void getNewsData() async {
    showData();
    apiServiceModel = await _apiService?.getCoronaNews();
    hideData();
  }

  void showData() => isLoading.toggle();
  void hideData() => isLoading.toggle();
}
