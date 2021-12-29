import 'dart:convert';

import 'package:covidapp/models/detail_view_model.dart';
import 'package:covidapp/models/news_view_model.dart';
import 'package:covidapp/models/service.model.dart';
import 'package:covidapp/services/dio/config.dart';
import 'package:covidapp/services/dio/dio_config.dart';
import 'package:covidapp/services/dio/endpoint.dart';
import 'package:dio/dio.dart';

class ApiService {
  Future<ApiServiceModel> getData() async {
    try {
      Response response = await getDio(dioOptions).get(apiServicePath());
      ApiServiceModel data = ApiServiceModel.fromJson(response.data);
      return data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<DetailViewCountry> getDataCountry() async {
    try {
      Response response = await getDio(dioOptions).get(apiServiceDetailPath());
      DetailViewCountry data = DetailViewCountry.fromJson(response.data);
      return data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<NewsViewModel> getCoronaNews() async {
    try {
      Response response = await getDio(dioOptions).get(apiServiceNewsPath());
      NewsViewModel data = NewsViewModel.fromJson(response.data);
      print(data);
      return data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
