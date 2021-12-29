import 'package:covidapp/controller/api_service_controller.dart';
import 'package:covidapp/models/detail_view_model.dart';

import 'package:covidapp/services/api_service.dart';
import 'package:get/get.dart';

class DetailViewController extends GetxController {
  DetailViewController() {
    _apiService = Get.find<ApiService>();
    getDetailView();
  }

  ApiService? _apiService;
  DetailViewCountry? apiServiceModel;
  RxBool isLoading = false.obs;

  void getDetailView() async {
    showData();
    apiServiceModel = await _apiService?.getDataCountry();
    hideData();
  }

  void showData() => isLoading.toggle();
  void hideData() => isLoading.toggle();
}
