import 'dart:convert';

ApiServiceModel apiServiceModelFromJson(String str) =>
    ApiServiceModel.fromJson(json.decode(str));

String apiServiceModelToJson(ApiServiceModel data) =>
    json.encode(data.toJson());

class ApiServiceModel {
  ApiServiceModel({
    required this.success,
    required this.result,
  });

  bool? success;
  Result? result;

  factory ApiServiceModel.fromJson(Map<String, dynamic> json) =>
      ApiServiceModel(
        success: json["success"],
        result: Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "result": result!.toJson(),
      };
}

class Result {
  Result({
    required this.totalDeaths,
    required this.totalCases,
    required this.totalRecovered,
  });

  String? totalDeaths;
  String? totalCases;
  String? totalRecovered;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        totalDeaths: json["totalDeaths"],
        totalCases: json["totalCases"],
        totalRecovered: json["totalRecovered"],
      );

  Map<String, dynamic> toJson() => {
        "totalDeaths": totalDeaths,
        "totalCases": totalCases,
        "totalRecovered": totalRecovered,
      };
}
