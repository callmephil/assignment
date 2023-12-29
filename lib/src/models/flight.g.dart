// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flight _$FlightFromJson(Map<String, dynamic> json) => Flight(
      flightNumber: json['flightNumber'] as String?,
      departureAirportCode: json['departureAirportCode'] as String?,
      destinationAirportCode: json['destinationAirportCode'] as String?,
      departureTime: json['departureTime'] == null
          ? null
          : DateTime.parse(json['departureTime'] as String),
      arrivalTime: json['arrivalTime'] == null
          ? null
          : DateTime.parse(json['arrivalTime'] as String),
      aircraftID: json['aircraftID'] as int?,
    );

Map<String, dynamic> _$FlightToJson(Flight instance) => <String, dynamic>{
      'flightNumber': instance.flightNumber,
      'departureAirportCode': instance.departureAirportCode,
      'destinationAirportCode': instance.destinationAirportCode,
      'departureTime': instance.departureTime?.toIso8601String(),
      'arrivalTime': instance.arrivalTime?.toIso8601String(),
      'aircraftID': instance.aircraftID,
    };
