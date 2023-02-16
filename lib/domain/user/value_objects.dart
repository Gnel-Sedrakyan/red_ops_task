import 'package:dartz/dartz.dart';
import 'package:red_ops_task/domain/core/failures.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';
import 'package:red_ops_task/domain/core/value_validators.dart';

class RestaurantStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RestaurantStatus(String input) {
    return RestaurantStatus._(
      Right(input),
    );
  }

  const RestaurantStatus._(this.value);
}

class UriPath extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UriPath(String input) {
    return UriPath._(
      validateNotEmpty(input),
    );
  }

  const UriPath._(this.value);
}
