import 'package:covidapp/controller/api_service_controller.dart';
import 'package:covidapp/controller/detail_view_controller.dart';
import 'package:covidapp/services/api_service.dart';
import 'package:get/instance_manager.dart';

class HomeViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiService>(ApiService());
    Get.lazyPut<ApiServiceController>(() => ApiServiceController());
  }
}
