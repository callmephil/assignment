import 'package:json_annotation/json_annotation.dart';

part 'airline.g.dart';

@JsonSerializable()
class Airline {
  final String? airlineCode;
  final String? airlineName;

  const Airline({this.airlineCode, this.airlineName});

  factory Airline.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$AirlineFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AirlineToJson(this);

  Airline copyWith({String? airlineCode, String? airlineName}) {
    return Airline(
      airlineCode: airlineCode ?? this.airlineCode,
      airlineName: airlineName ?? this.airlineName,
    );
  }
}
