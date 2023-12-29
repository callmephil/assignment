import 'package:json_annotation/json_annotation.dart';

part 'airport.g.dart';

@JsonSerializable()
class Airport {
  final String? airportCode;
  final String? airportName;
  final String? location;

  const Airport({
    this.airportCode,
    this.airportName,
    this.location,
  });

  factory Airport.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$AirportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AirportToJson(this);

  Airport copyWith({
    String? airportCode,
    String? airportName,
    String? location,
  }) {
    return Airport(
      airportCode: airportCode ?? this.airportCode,
      airportName: airportName ?? this.airportName,
      location: location ?? this.location,
    );
  }
}
