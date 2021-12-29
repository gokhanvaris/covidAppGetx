import 'package:covidapp/controller/news_view_controler.dart';
import 'package:covidapp/services/api_service.dart';
import 'package:get/instance_manager.dart';

class NewsViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiService>(ApiService());
    Get.lazyPut<NewsViewController>(() => NewsViewController());
  }
}
