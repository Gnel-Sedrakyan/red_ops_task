import 'package:red_ops_task/domain/core/entity.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/user/value_objects.dart';

class User implements IEntity {
  @override
  final UniqueId id;
  final Name name;
  final Name lastName;
  final String email;
  final PhoneNumber phoneNumber;
  final ActivationDate activationDate;
  final UserStatus status;

  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.activationDate,
    required this.status,
  });

  User copyWith({
    UniqueId? id,
    Name? name,
    Name? lastName,
    String? email,
    PhoneNumber? phoneNumber,
    ActivationDate? activationDate,
    UserStatus? status,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      activationDate: activationDate ?? this.activationDate,
      status: status ?? this.status,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User && other.id == id;
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      lastName.hashCode ^
      email.hashCode ^
      phoneNumber.hashCode ^
      activationDate.hashCode ^
      status.hashCode;

  @override
  String toString() => 'User:$name';
}
