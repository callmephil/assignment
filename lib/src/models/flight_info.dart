import 'package:json_annotation/json_annotation.dart';

part 'flight_info.g.dart';

@JsonSerializable()
class FlightInfo {
  final String ticketNumber;
  final String passengerID;
  final String flightNumber;
  final String seatNumber;
  final String airportCode;
  final String airportName;
  final String location;
  final String airlineCode;
  final String airlineName;
  final String aircraftID;
  final String aircraftType;
  final String departureAirportCode;
  final String destinationAirportCode;
  final String departureTime;
  final String arrivalTime;
  final String firstName;
  final String lastName;
  final String staffID;
  final String position;
  final String checkID;
  final String checkTime;

  const FlightInfo({
    required this.ticketNumber,
    required this.passengerID,
    required this.flightNumber,
    required this.seatNumber,
    required this.airportCode,
    required this.airportName,
    required this.location,
    required this.airlineCode,
    required this.airlineName,
    required this.aircraftID,
    required this.aircraftType,
    required this.departureAirportCode,
    required this.destinationAirportCode,
    required this.departureTime,
    required this.arrivalTime,
    required this.firstName,
    required this.lastName,
    required this.staffID,
    required this.position,
    required this.checkID,
    required this.checkTime,
  });

  static List<FlightInfo> fromJsonList(List<Map<String, dynamic>> data) {
    return data.map(FlightInfo.fromJson).toList();
  }

  factory FlightInfo.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$FlightInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FlightInfoToJson(this);
}

extension TimeHumanizer on String {
  String get humanize {
    final time = DateTime.parse(this);
    return "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
  }
}
