// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Airport _$AirportFromJson(Map<String, dynamic> json) => Airport(
      airportCode: json['airportCode'] as String?,
      airportName: json['airportName'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$AirportToJson(Airport instance) => <String, dynamic>{
      'airportCode': instance.airportCode,
      'airportName': instance.airportName,
      'location': instance.location,
    };
