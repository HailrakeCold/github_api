import 'package:json_annotation/json_annotation.dart';
part 'github_users_models.g.dart';

@JsonSerializable()
class GithubUsersModels {
  String login;
  int id;
  String avatar_url;
  String url;
  String html_url;
  String followers_url;
  String following_url;
  String gists_url;
  String subscriptions_url;
  String organizations_url;
  String repos_url;
  String type;
  bool site_admin;
  @override
  GithubUsersModels({
    required this.login,
    required this.id,
    required this.avatar_url,
    required this.url,
    required this.html_url,
    required this.gists_url,
    required this.subscriptions_url,
    required this.organizations_url,
    required this.repos_url,
    required this.site_admin,
    required this.type,
    required this.followers_url,
    required this.following_url,
  });

  factory GithubUsersModels.fromJson(Map<String, dynamic> json) =>
      _$GithubUsersModelsFromJson(json);

  Map<String, dynamic> toJson() => _$GithubUsersModelsToJson(this);
}
