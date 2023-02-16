import 'package:red_ops_task/domain/core/entity.dart';
import 'package:red_ops_task/domain/core/value_objects.dart';

class User implements IEntity {
  @override
  final UniqueId id;
  final String name;
  final String logo;
  final String image;
  final String location;

  User({
    required this.id,
    required this.name,
    required this.logo,
    required this.image,
    required this.location,
  });

  User copyWith({
    UniqueId? id,
    String? name,
    String? logo,
    String? image,
    String? location,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      logo: logo ?? this.logo,
      image: image ?? this.image,
      location: location ?? this.location,
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
      logo.hashCode ^
      image.hashCode ^
      location.hashCode;

  @override
  String toString() => 'User:$name';
}
