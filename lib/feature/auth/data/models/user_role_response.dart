import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role_response.g.dart';
@JsonSerializable()
class UserRoleResponse {
  UserRoleResponse(
    this.userRole
  );
  @JsonKey(name: 'user_role')
  final String? userRole;


}