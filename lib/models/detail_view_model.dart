import 'dart:convert';

DetailViewCountry detailViewCountryFromJson(String str) =>
    DetailViewCountry.fromJson(json.decode(str));

String detailViewCountryToJson(DetailViewCountry data) =>
    json.encode(data.toJson());

class DetailViewCountry {
  DetailViewCountry({
    this.success,
    this.resultCountry,
  });

  bool? success;
  List<ResultCountry>? resultCountry;

  factory DetailViewCountry.fromJson(Map<String, dynamic> json) =>
      DetailViewCountry(
        success: json["success"],
        resultCountry: List<ResultCountry>.from(
            json["result"].map((x) => ResultCountry.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "result": List<dynamic>.from(resultCountry!.map((x) => x.toJson())),
      };
}

class ResultCountry {
  ResultCountry({
    this.country,
    this.totalCases,
    this.newCases,
    this.totalDeaths,
    this.newDeaths,
    this.totalRecovered,
    this.activeCases,
  });

  String? country;
  String? totalCases;
  String? newCases;
  String? totalDeaths;
  String? newDeaths;
  String? totalRecovered;
  String? activeCases;

  factory ResultCountry.fromJson(Map<String, dynamic> json) => ResultCountry(
        country: json["country"],
        totalCases: json["totalCases"],
        newCases: json["newCases"],
        totalDeaths: json["totalDeaths"],
        newDeaths: json["newDeaths"],
        totalRecovered: json["totalRecovered"],
        activeCases: json["activeCases"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "totalCases": totalCases,
        "newCases": newCases,
        "totalDeaths": totalDeaths,
        "newDeaths": newDeaths,
        "totalRecovered": totalRecovered,
        "activeCases": activeCases,
      };
}
