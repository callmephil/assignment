import 'package:assignments/src/models/aircraft.dart';
import 'package:assignments/src/models/airline.dart';
import 'package:assignments/src/models/airport.dart';
import 'package:assignments/src/models/flight.dart';
import 'package:assignments/src/models/passenger.dart';
import 'package:assignments/src/models/security_check.dart';
import 'package:assignments/src/models/staff.dart';
import 'package:assignments/src/models/ticket.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test.g.dart';

// ? this is how the api is named
@JsonSerializable(explicitToJson: true)
class Test {
  final List<Airport>? airport;
  final List<Aircraft>? aircraft;
  final List<Airline>? airline;
  final List<Flight>? flight;
  final List<Passenger>? passenger;
  final List<SecurityCheck>? securityCheck;
  final List<Staff>? staff;
  final List<Ticket>? ticket;

  const Test({
    this.airport,
    this.aircraft,
    this.airline,
    this.flight,
    this.passenger,
    this.securityCheck,
    this.staff,
    this.ticket,
  });

  // TODO: change api to return lowercased keys
  factory Test.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$TestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TestToJson(this);

  Test copyWith({
    List<Aircraft>? aircraft,
    List<Airline>? airlines,
    List<Airport>? airports,
    List<Flight>? flight,
    List<Passenger>? passenger,
    List<SecurityCheck>? securityChecks,
    List<Staff>? staffs,
    List<Ticket>? tickets,
  }) {
    return Test(
      aircraft: aircraft ?? this.aircraft,
      airline: airlines ?? airline,
      airport: airports ?? airport,
      flight: flight ?? this.flight,
      passenger: passenger ?? passenger,
      securityCheck: securityCheck ?? securityCheck,
      staff: staff ?? staff,
      ticket: ticket ?? ticket,
    );
  }
}
