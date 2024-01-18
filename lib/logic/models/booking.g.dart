// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      id: json['id'] as int?,
      hotelName: json['hotelName'] as String?,
      hotelAdress: json['hotelAdress'] as String?,
      horating: json['horating'] as int?,
      ratingName: json['ratingName'] as String?,
      departure: json['departure'] as String?,
      arrivalCountry: json['arrivalCountry'] as String?,
      tourDateStart: json['tourDateStart'] as String?,
      tourDateStop: json['tourDateStop'] as String?,
      numberOfNights: json['numberOfNights'] as int?,
      room: json['room'] as String?,
      nutrition: json['nutrition'] as String?,
      tourPrice: json['tourPrice'] as int?,
      fuelCharge: json['fuelCharge'] as int?,
      serviceCharge: json['serviceCharge'] as int?,
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'id': instance.id,
      'hotelName': instance.hotelName,
      'hotelAdress': instance.hotelAdress,
      'horating': instance.horating,
      'ratingName': instance.ratingName,
      'departure': instance.departure,
      'arrivalCountry': instance.arrivalCountry,
      'tourDateStart': instance.tourDateStart,
      'tourDateStop': instance.tourDateStop,
      'numberOfNights': instance.numberOfNights,
      'room': instance.room,
      'nutrition': instance.nutrition,
      'tourPrice': instance.tourPrice,
      'fuelCharge': instance.fuelCharge,
      'serviceCharge': instance.serviceCharge,
    };
