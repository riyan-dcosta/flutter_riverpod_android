import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_model.freezed.dart';

// part 'profile_model.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String name,
    required int phone,
  }) = _UserProfile;

// factory UserProfile.formJson(Map<String, dynamic> json) =>
//     _$UserProfileToJson();
}
