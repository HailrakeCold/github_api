import 'package:json_annotation/json_annotation.dart';

part 'github_users_subscriptions_models.g.dart';

@JsonSerializable()
class GithubUsersSubscriptionsModels {
  String node_id;
  int id;
  String name;
  String full_name;
  bool private;

  @override
  GithubUsersSubscriptionsModels({
    required this.full_name,
    required this.id,
    required this.name,
    required this.node_id,
    required this.private,
  });

  factory GithubUsersSubscriptionsModels.fromJson(Map<String, dynamic> json) =>
      _$GithubUsersSubscriptionsModelsFromJson(json);

  Map<String, dynamic> toJson() => _$GithubUsersSubscriptionsModelsToJson(this);
}
