// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Passenger _$PassengerFromJson(Map<String, dynamic> json) => Passenger(
      passengerID: json['passengerID'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$PassengerToJson(Passenger instance) => <String, dynamic>{
      'passengerID': instance.passengerID,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
