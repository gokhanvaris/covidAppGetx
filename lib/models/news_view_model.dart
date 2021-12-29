import 'dart:convert';

NewsViewModel newsViewModelFromJson(String str) =>
    NewsViewModel.fromJson(json.decode(str));

String newsViewModelToJson(NewsViewModel data) => json.encode(data.toJson());

class NewsViewModel {
  NewsViewModel({
    this.success,
    this.resultNews,
  });

  bool? success;
  List<NewsResult>? resultNews;

  factory NewsViewModel.fromJson(Map<String, dynamic> json) => NewsViewModel(
        success: json["success"],
        resultNews: List<NewsResult>.from(
            json["result"].map((x) => NewsResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "result": List<dynamic>.from(resultNews!.map((x) => x.toJson())),
      };
}

class NewsResult {
  NewsResult({
    this.key,
    this.url,
    this.description,
    this.image,
    this.name,
    this.source,
  });

  String? key;
  String? url;
  String? description;
  String? image;
  String? name;
  String? source;

  factory NewsResult.fromJson(Map<String, dynamic> json) => NewsResult(
        key: json["key"],
        url: json["url"],
        description: json["description"],
        image: json["image"],
        name: json["name"],
        source: json["source"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "url": url,
        "description": description,
        "image": image,
        "name": name,
        "source": source,
      };
}
