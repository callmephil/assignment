import 'package:json_annotation/json_annotation.dart';

part 'staff.g.dart';

@JsonSerializable()
class Staff {
  final int? staffID;
  final String? firstName;
  final String? lastName;
  final String? position;

  const Staff({this.staffID, this.firstName, this.lastName, this.position});

  factory Staff.fromJson(Map<String, dynamic> json) {
    json = json.map((key, value) {
      return MapEntry(key[0].toLowerCase() + key.substring(1), value);
    });
    return _$StaffFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StaffToJson(this);

  Staff copyWith(
      {int? staffID, String? firstName, String? lastName, String? position}) {
    return Staff(
      staffID: staffID ?? this.staffID,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      position: position ?? this.position,
    );
  }
}
