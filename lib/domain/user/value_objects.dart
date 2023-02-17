import 'package:dartz/dartz.dart';
import 'package:red_ops_task/domain/core/failures.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';

class UserStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserStatus(String input) {
    return UserStatus._(
      Right(input),
    );
  }

  const UserStatus._(this.value);
}

class ActivationDate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ActivationDate(String input) {
    return ActivationDate._(
      Right(input),
    );
  }

  const ActivationDate._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      Right(input),
    );
  }

  const PhoneNumber._(this.value);
}

class City extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory City(String input) {
    return City._(
      Right(input),
    );
  }

  const City._(this.value);
}

class UserState extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserState(String input) {
    return UserState._(
      Right(input),
    );
  }

  const UserState._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(
      Right(input),
    );
  }

  const Name._(this.value);
}

class UserImage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserImage(String input) {
    return UserImage._(
      Right(input),
    );
  }

  const UserImage._(this.value);
}
