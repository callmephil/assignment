import 'package:json_annotation/json_annotation.dart';

part 'flight.g.dart';

@JsonSerializable()
class Flight {
  final String? flightNumber;
  final String? departureAirportCode;
  final String? destinationAirportCode;
  final DateTime? departureTime;
  final DateTime? arrivalTime;
  final int? aircraftID;

  const Flight({
    this.flightNumber,
    this.departureAirportCode,
    this.destinationAirportCode,
    this.departureTime,
    this.arrivalTime,
    this.aircraftID,
  });

  factory Flight.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$FlightFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FlightToJson(this);

  Flight copyWith({
    String? flightNumber,
    String? departureAirportCode,
    String? destinationAirportCode,
    DateTime? departureTime,
    DateTime? arrivalTime,
    int? aircraftID,
  }) {
    return Flight(
      flightNumber: flightNumber ?? this.flightNumber,
      departureAirportCode: departureAirportCode ?? this.departureAirportCode,
      destinationAirportCode:
          destinationAirportCode ?? this.destinationAirportCode,
      departureTime: departureTime ?? this.departureTime,
      arrivalTime: arrivalTime ?? this.arrivalTime,
      aircraftID: aircraftID ?? this.aircraftID,
    );
  }
}
