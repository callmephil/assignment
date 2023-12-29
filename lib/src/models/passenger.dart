import 'package:json_annotation/json_annotation.dart';

part 'passenger.g.dart';

@JsonSerializable()
class Passenger {
  final int? passengerID;
  final String? firstName;
  final String? lastName;

  const Passenger({this.passengerID, this.firstName, this.lastName});

  factory Passenger.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$PassengerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PassengerToJson(this);

  Passenger copyWith({int? passengerID, String? firstName, String? lastName}) {
    return Passenger(
      passengerID: passengerID ?? this.passengerID,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }
}
