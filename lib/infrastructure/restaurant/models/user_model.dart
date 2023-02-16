import 'package:red_ops_task/domain/core/value_objects.dart';
import 'dart:convert';
import 'package:red_ops_task/domain/user/user.dart';
import 'package:red_ops_task/domain/user/value_objects.dart';

class UserModel extends User {
  UserModel({
    required UniqueId id,
    required Name name,
    required Name lastName,
    required String email,
    required PhoneNumber phoneNumber,
    required ActivationDate activationDate,
    required UserStatus status,
  }) : super(
          id: id,
          name: name,
          lastName: lastName,
          email: email,
          phoneNumber: phoneNumber,
          activationDate: activationDate,
          status: status,
        );

  Map<String, dynamic> toJson() {
    return {
      'firstName': name.value.getOrElse(() => null),
      'lastName': lastName.value.getOrElse(() => null),
      'email': email,
      'phoneNumber': phoneNumber.value.getOrElse(() => null),
      'activationDate': activationDate.value.getOrElse(() => null),
      'status': status.value.getOrElse(() => null),
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: UniqueId(),
      name: Name(map['firstName']),
      lastName: Name(map["lastName"]),
      email: map["email"],
      phoneNumber: PhoneNumber(map['phoneNumber']),
      status: UserStatus(map["status"]),
      activationDate: ActivationDate(map["activationDate"]),
    );
  }

  static listFromResponse(Map<String, dynamic> response) {
    final data = response["result"]["data"] as List;
    return data
        .map(
          (user) => UserModel.fromJson(user),
        )
        .toList();
  }

  // static List<UserModel> listFromJson(String json) {
  //   final tariffJsonList = jsonDecode(json) as List;

  //   return tariffJsonList
  //       .map(
  //         (tairffJson) => UserModel.fromJson(tairffJson),
  //       )
  //       .toList();
  // }
}
