// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

GetDataModel temperaturesFromJson(String str) =>
    GetDataModel.fromJson(json.decode(str));

String temperaturesToJson(GetDataModel data) => json.encode(data.toJson());

class GetDataModel {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  Rating rating;

  GetDataModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  GetDataModel copyWith({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
  }) =>
      GetDataModel(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
        description: description ?? this.description,
        category: category ?? this.category,
        image: image ?? this.image,
        rating: rating ?? this.rating,
      );

  factory GetDataModel.fromJson(Map<String, dynamic> json) => GetDataModel(
        id: json["id"] as int? ?? 0,
        title: json["title"] as String? ?? "",
        price: json["price"]?.toDouble() as double? ?? 0,
        description: json["description"] as String? ?? "",
        category: json["category"] as String? ?? "",
        image: json["image"] as String? ?? "",
        rating: Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating.toJson(),
      };
}

class Rating {
  double rate;
  int count;

  Rating({
    required this.rate,
    required this.count,
  });

  Rating copyWith({
    double? rate,
    int? count,
  }) =>
      Rating(
        rate: rate ?? this.rate,
        count: count ?? this.count,
      );

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"]?.toDouble() as double? ?? 0,
        count: json["count"] as int? ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}
