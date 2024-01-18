import 'package:json_annotation/json_annotation.dart';

part 'hotel.g.dart';

@JsonSerializable()
class Hotel {
  final int? id;
  final String? name;
  final String? adress;
  final int? minimalPrice;
  final String? priceForIt;
  final int? rating;
  final String? ratingName;
  final List<String>? imageUrls;
  final AboutTheHotel? aboutTheHotel;
  Hotel({
    required this.id,
    required this.name,
    required this.adress,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.aboutTheHotel,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
  Map<String, dynamic> toJson() => _$HotelToJson(this);
}

@JsonSerializable()
class AboutTheHotel {
  final String? description;
  final List<String>? peculiarities;
  AboutTheHotel({
    required this.description,
    required this.peculiarities,
  });

  factory AboutTheHotel.fromJson(Map<String, dynamic> json) =>
      _$AboutTheHotelFromJson(json);
  Map<String, dynamic> toJson() => _$AboutTheHotelToJson(this);
}
