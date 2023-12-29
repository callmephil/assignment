// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Staff _$StaffFromJson(Map<String, dynamic> json) => Staff(
      staffID: json['staffID'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      position: json['position'] as String?,
    );

Map<String, dynamic> _$StaffToJson(Staff instance) => <String, dynamic>{
      'staffID': instance.staffID,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'position': instance.position,
    };
