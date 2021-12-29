import 'package:covidapp/bindings/detail_view_binding.dart';
import 'package:covidapp/bindings/home_view_binding.dart';
import 'package:covidapp/bindings/news_view_binding.dart';
import 'package:covidapp/views/detail/detail_view.dart';
import 'package:covidapp/views/home/home_view.dart';
import 'package:covidapp/views/news/news_view.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(
    name: '/',
    page: () => const HomeView(),
    binding: HomeViewBinding(),
  ),
  GetPage(
    name: '/detail',
    page: () => DetailView(),
    binding: DetailViewBinding(),
  ),
  GetPage(
    name: '/news',
    page: () => NewsView(),
    binding: NewsViewBinding(),
  ),
];
