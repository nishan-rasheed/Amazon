// To parse this JSON data, do
//
//     final saleDetails = saleDetailsFromJson(jsonString);

import 'dart:convert';

SaleDetails saleDetailsFromJson(String str) => SaleDetails.fromJson(json.decode(str));

String saleDetailsToJson(SaleDetails data) => json.encode(data.toJson());

class SaleDetails {
    SaleDetails({
        this.images,
        this.details,
        this.prize,
        this.date,
        this.title,
    });

    String? images;
    String? details;
    int? prize;
    String? date;
    String? title;

    factory SaleDetails.fromJson(Map<String, dynamic> json) => SaleDetails(
        images: json["images"],
        details: json["details"],
        prize: json["Prize"],
        date: json["date"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "images": images,
        "details": details,
        "Prize": prize,
        "date": date,
        "title": title,
    };
}
