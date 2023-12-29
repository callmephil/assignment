// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Aircraft _$AircraftFromJson(Map<String, dynamic> json) => Aircraft(
      aircraftID: json['aircraftID'] as int?,
      aircraftType: json['aircraftType'] as String?,
      airlineCode: json['airlineCode'] as String?,
    );

Map<String, dynamic> _$AircraftToJson(Aircraft instance) => <String, dynamic>{
      'aircraftID': instance.aircraftID,
      'aircraftType': instance.aircraftType,
      'airlineCode': instance.airlineCode,
    };
