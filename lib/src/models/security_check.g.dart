// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_check.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecurityCheck _$SecurityCheckFromJson(Map<String, dynamic> json) =>
    SecurityCheck(
      checkID: json['checkID'] as int?,
      staffID: json['staffID'] as int?,
      flightNumber: json['flightNumber'] as String?,
      checkTime: json['checkTime'] == null
          ? null
          : DateTime.parse(json['checkTime'] as String),
    );

Map<String, dynamic> _$SecurityCheckToJson(SecurityCheck instance) =>
    <String, dynamic>{
      'checkID': instance.checkID,
      'staffID': instance.staffID,
      'flightNumber': instance.flightNumber,
      'checkTime': instance.checkTime?.toIso8601String(),
    };
