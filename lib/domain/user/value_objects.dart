import 'package:dartz/dartz.dart';
import 'package:red_ops_task/domain/core/failures.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/core/value_validators.dart';

class UserStatus extends ValueObject<String?> {
  @override
  final Either<ValueFailure<String?>, String?> value;

  factory UserStatus(String? input) {
    return UserStatus._(
      validateNotNull(input),
    );
  }

  const UserStatus._(this.value);
}

class ActivationDate extends ValueObject<String?> {
  @override
  final Either<ValueFailure<String?>, String?> value;

  factory ActivationDate(String? input) {
    return ActivationDate._(
      validateNotNull(input),
    );
  }

  const ActivationDate._(this.value);
}

class PhoneNumber extends ValueObject<String?> {
  @override
  final Either<ValueFailure<String?>, String?> value;

  factory PhoneNumber(String? input) {
    return PhoneNumber._(
      validateNotNull(input),
    );
  }

  const PhoneNumber._(this.value);
}

class Name extends ValueObject<String?> {
  @override
  final Either<ValueFailure<String?>, String?> value;

  factory Name(String? input) {
    return Name._(
      validateNotNull(input),
    );
  }

  const Name._(this.value);
}
