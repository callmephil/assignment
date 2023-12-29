import 'package:json_annotation/json_annotation.dart';

part 'aircraft.g.dart';

@JsonSerializable()
class Aircraft {
  final int? aircraftID;
  final String? aircraftType;
  final String? airlineCode;

  const Aircraft({this.aircraftID, this.aircraftType, this.airlineCode});

  factory Aircraft.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$AircraftFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AircraftToJson(this);

  Aircraft copyWith(
      {int? aircraftID, String? aircraftType, String? airlineCode}) {
    return Aircraft(
      aircraftID: aircraftID ?? this.aircraftID,
      aircraftType: aircraftType ?? this.aircraftType,
      airlineCode: airlineCode ?? this.airlineCode,
    );
  }
}
