import 'package:dartz/dartz.dart';
import 'package:red_ops_task/domain/core/entity.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/user/value_objects.dart';

class User implements IEntity {
  @override
  final UniqueId id;
  final Option<Name> name;
  final Option<Name> lastName;
  final String email;
  final Option<PhoneNumber> phoneNumber;
  final Option<ActivationDate> activationDate;
  final Option<UserStatus> status;
  final Option<UserImage> image;
  final Option<City> city;
  final Option<UserState> state;

  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.activationDate,
    required this.status,
    required this.image,
    required this.city,
    required this.state,
  });

  User copyWith({
    UniqueId? id,
    Option<Name>? name,
    Option<Name>? lastName,
    String? email,
    Option<PhoneNumber>? phoneNumber,
    Option<ActivationDate>? activationDate,
    Option<UserStatus>? status,
    Option<UserImage>? image,
    Option<City>? city,
    Option<UserState>? state,
  }) {
    return User(
      id: (id != null) ? id : this.id,
      name: (name != null) ? name : this.name,
      lastName: (lastName != null) ? lastName : this.lastName,
      email: (email != null) ? email : this.email,
      phoneNumber: (phoneNumber != null) ? phoneNumber : this.phoneNumber,
      activationDate:
          (activationDate != null) ? activationDate : this.activationDate,
      status: (status != null) ? status : this.status,
      image: (image != null) ? image : this.image,
      city: (city != null) ? city : this.city,
      state: (state != null) ? state : this.state,
    );
  }

  bool checkIsMatchingFilter(String filterText) {
    final words = filterText.split(' ');
    return words.every((word) {
      if (name.fold(
        () => false,
        (r) => r.getOrCrash().toLowerCase().startsWith(word.toLowerCase()),
      )) {
        return true;
      }
      if (lastName.fold(
        () => false,
        (r) => r.getOrCrash().toLowerCase().startsWith(word.toLowerCase()),
      )) {
        return true;
      }
      if (email.toLowerCase().startsWith(word.toLowerCase())) {
        return true;
      }
      return false;
    });
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
      status.hashCode ^
      image.hashCode;

  @override
  String toString() => 'User:$name';
}
