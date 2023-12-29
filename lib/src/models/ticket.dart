import 'package:json_annotation/json_annotation.dart';

part 'ticket.g.dart';

@JsonSerializable()
class Ticket {
  final String? ticketNumber;
  final int? passengerID;
  final String? flightNumber;
  final String? seatNumber;

  const Ticket({
    this.ticketNumber,
    this.passengerID,
    this.flightNumber,
    this.seatNumber,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$TicketFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketToJson(this);

  Ticket copyWith({
    String? ticketNumber,
    int? passengerID,
    String? flightNumber,
    String? seatNumber,
  }) {
    return Ticket(
      ticketNumber: ticketNumber ?? this.ticketNumber,
      passengerID: passengerID ?? this.passengerID,
      flightNumber: flightNumber ?? this.flightNumber,
      seatNumber: seatNumber ?? this.seatNumber,
    );
  }
}
