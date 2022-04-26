import 'package:json_annotation/json_annotation.dart';
part 'github_users_orgs_models.g.dart';

@JsonSerializable()
class GithubUsersOrgsModels {
  String login;
  int id;
  String node_id;
  String url;
  String repos_url;
  String events_url;
  String hooks_url;
  String issues_url;
  String members_url;
  String public_members_url;
  String avatar_url;
  String description;

  @override
  GithubUsersOrgsModels({
    required this.login,
    required this.id,
    required this.node_id,
    required this.url,
    required this.repos_url,
    required this.events_url,
    required this.hooks_url,
    required this.issues_url,
    required this.members_url,
    required this.public_members_url,
    required this.avatar_url,
    required this.description,
  });

  factory GithubUsersOrgsModels.fromJson(Map<String, dynamic> json) =>
      _$GithubUsersOrgsModelsFromJson(json);

  Map<String, dynamic> toJson() => _$GithubUsersOrgsModelsToJson(this);
}
