// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      ticketNumber: json['ticketNumber'] as String?,
      passengerID: json['passengerID'] as int?,
      flightNumber: json['flightNumber'] as String?,
      seatNumber: json['seatNumber'] as String?,
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'ticketNumber': instance.ticketNumber,
      'passengerID': instance.passengerID,
      'flightNumber': instance.flightNumber,
      'seatNumber': instance.seatNumber,
    };
