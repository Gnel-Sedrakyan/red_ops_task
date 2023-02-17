import 'package:dartz/dartz.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/user/user.dart';
import 'package:red_ops_task/domain/user/value_objects.dart';

class UserModel extends User {
  UserModel({
    required UniqueId id,
    required Option<Name> name,
    required Option<Name> lastName,
    required String email,
    required Option<PhoneNumber> phoneNumber,
    required Option<ActivationDate> activationDate,
    required Option<UserStatus> status,
    required Option<UserImage> image,
    required Option<City> city,
    required Option<UserState> state,
  }) : super(
          id: id,
          name: name,
          lastName: lastName,
          email: email,
          phoneNumber: phoneNumber,
          activationDate: activationDate,
          status: status,
          image: image,
          city: city,
          state: state,
        );

  Map<String, dynamic> toJson() {
    return {
      'firstName': name.fold(() => null, (a) => a.getOrCrash()),
      'lastName': lastName.fold(() => null, (a) => a.getOrCrash()),
      'email': email,
      'phoneNumber': phoneNumber.fold(() => null, (a) => a.getOrCrash()),
      'activationDate': activationDate.fold(() => null, (a) => a.getOrCrash()),
      'status': status.fold(() => null, (a) => a.getOrCrash()),
      'image': image.fold(() => null, (a) => a.getOrCrash()),
      'city': city.fold(() => null, (a) => a.getOrCrash()),
      'state': state.fold(() => null, (a) => a.getOrCrash()),
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: UniqueId.fromUniqueString(map['uuid']),
      name: (map['firstName'] != null) ? some(Name(map['firstName'])) : none(),
      lastName:
          (map["lastName"] != null) ? some(Name(map["lastName"])) : none(),
      email: map["email"],
      phoneNumber: (map['phoneNumber'] != null)
          ? some(PhoneNumber(map['phoneNumber']))
          : none(),
      status:
          (map["status"] != null) ? some(UserStatus(map["status"])) : none(),
      activationDate: (map["activationDate"] != null)
          ? some(ActivationDate(map["activationDate"]))
          : none(),
      image: (map["image"] != null) ? some(UserImage(map["image"])) : none(),
      city: (map['city'] != null) ? some(City(map['city'])) : none(),
      state: (map['state'] != null) ? some(UserState(map['state'])) : none(),
    );
  }

  static List<UserModel> listFromResponse(Map<String, dynamic> response) {
    final data = response["result"]["data"] as List;
    return data
        .map(
          (user) => UserModel.fromJson(user),
        )
        .toList();
  }
}
