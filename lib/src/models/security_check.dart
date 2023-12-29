import 'package:json_annotation/json_annotation.dart';

part 'security_check.g.dart';

@JsonSerializable()
class SecurityCheck {
  final int? checkID;
  final int? staffID;
  final String? flightNumber;
  final DateTime? checkTime;

  const SecurityCheck(
      {this.checkID, this.staffID, this.flightNumber, this.checkTime});

  factory SecurityCheck.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$SecurityCheckFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SecurityCheckToJson(this);

  SecurityCheck copyWith(
      {int? checkID, int? staffID, String? flightNumber, DateTime? checkTime}) {
    return SecurityCheck(
      checkID: checkID ?? this.checkID,
      staffID: staffID ?? this.staffID,
      flightNumber: flightNumber ?? this.flightNumber,
      checkTime: checkTime ?? this.checkTime,
    );
  }
}
