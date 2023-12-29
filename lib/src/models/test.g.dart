// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Test _$TestFromJson(Map<String, dynamic> json) => Test(
      airport: (json['airport'] as List<dynamic>?)
          ?.map((e) => Airport.fromJson(e as Map<String, dynamic>))
          .toList(),
      aircraft: (json['aircraft'] as List<dynamic>?)
          ?.map((e) => Aircraft.fromJson(e as Map<String, dynamic>))
          .toList(),
      airline: (json['airline'] as List<dynamic>?)
          ?.map((e) => Airline.fromJson(e as Map<String, dynamic>))
          .toList(),
      flight: (json['flight'] as List<dynamic>?)
          ?.map((e) => Flight.fromJson(e as Map<String, dynamic>))
          .toList(),
      passenger: (json['passenger'] as List<dynamic>?)
          ?.map((e) => Passenger.fromJson(e as Map<String, dynamic>))
          .toList(),
      securityCheck: (json['securityCheck'] as List<dynamic>?)
          ?.map((e) => SecurityCheck.fromJson(e as Map<String, dynamic>))
          .toList(),
      staff: (json['staff'] as List<dynamic>?)
          ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticket: (json['ticket'] as List<dynamic>?)
          ?.map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TestToJson(Test instance) => <String, dynamic>{
      'airport': instance.airport?.map((e) => e.toJson()).toList(),
      'aircraft': instance.aircraft?.map((e) => e.toJson()).toList(),
      'airline': instance.airline?.map((e) => e.toJson()).toList(),
      'flight': instance.flight?.map((e) => e.toJson()).toList(),
      'passenger': instance.passenger?.map((e) => e.toJson()).toList(),
      'securityCheck': instance.securityCheck?.map((e) => e.toJson()).toList(),
      'staff': instance.staff?.map((e) => e.toJson()).toList(),
      'ticket': instance.ticket?.map((e) => e.toJson()).toList(),
    };
