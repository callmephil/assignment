// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlightInfo _$FlightInfoFromJson(Map<String, dynamic> json) => FlightInfo(
      ticketNumber: json['ticketNumber'] as String,
      passengerID: json['passengerID'] as String,
      flightNumber: json['flightNumber'] as String,
      seatNumber: json['seatNumber'] as String,
      airportCode: json['airportCode'] as String,
      airportName: json['airportName'] as String,
      location: json['location'] as String,
      airlineCode: json['airlineCode'] as String,
      airlineName: json['airlineName'] as String,
      aircraftID: json['aircraftID'] as String,
      aircraftType: json['aircraftType'] as String,
      departureAirportCode: json['departureAirportCode'] as String,
      destinationAirportCode: json['destinationAirportCode'] as String,
      departureTime: json['departureTime'] as String,
      arrivalTime: json['arrivalTime'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      staffID: json['staffID'] as String,
      position: json['position'] as String,
      checkID: json['checkID'] as String,
      checkTime: json['checkTime'] as String,
    );

Map<String, dynamic> _$FlightInfoToJson(FlightInfo instance) =>
    <String, dynamic>{
      'ticketNumber': instance.ticketNumber,
      'passengerID': instance.passengerID,
      'flightNumber': instance.flightNumber,
      'seatNumber': instance.seatNumber,
      'airportCode': instance.airportCode,
      'airportName': instance.airportName,
      'location': instance.location,
      'airlineCode': instance.airlineCode,
      'airlineName': instance.airlineName,
      'aircraftID': instance.aircraftID,
      'aircraftType': instance.aircraftType,
      'departureAirportCode': instance.departureAirportCode,
      'destinationAirportCode': instance.destinationAirportCode,
      'departureTime': instance.departureTime,
      'arrivalTime': instance.arrivalTime,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'staffID': instance.staffID,
      'position': instance.position,
      'checkID': instance.checkID,
      'checkTime': instance.checkTime,
    };
