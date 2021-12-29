import 'package:covidapp/models/service.model.dart';
import 'package:covidapp/services/api_service.dart';
import 'package:get/get.dart';

class ApiServiceController extends GetxController {
  ApiServiceController() {
    _apiService = Get.find<ApiService>();
    getResponse();
  }

  ApiService? _apiService;
  ApiServiceModel? apiServiceModel;
  RxBool isLoading = false.obs;

  void getResponse() async {
    showData();
    apiServiceModel = await _apiService?.getData();
    hideData();
  }

  void showData() => isLoading.toggle();
  void hideData() => isLoading.toggle();
}
