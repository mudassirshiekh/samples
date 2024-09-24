import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    /// The user's ID.
    required String id,

    /// The user's name.
    required String name,

    /// The user's email.
    required String email,

    /// The user's picture URL.
    required String picture,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}