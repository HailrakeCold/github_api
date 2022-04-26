import 'package:json_annotation/json_annotation.dart';
part 'github_users_followers_models.g.dart';

@JsonSerializable()
class GithubUsersFollowersModels {
  String login;
  int id;
  String avatar_url;
  String url;
  String html_url;
  String followers_url;
  String following_url;
  String gists_url;
  String starred_url;
  String subscriptions_url;
  String organizations_url;
  String repos_url;
  String events_url;
  String received_events_url;
  String type;
  bool site_admin;

  @override
  GithubUsersFollowersModels({
    required this.login,
    required this.id,
    required this.avatar_url,
    required this.url,
    required this.html_url,
    required this.followers_url,
    required this.following_url,
    required this.gists_url,
    required this.starred_url,
    required this.subscriptions_url,
    required this.organizations_url,
    required this.repos_url,
    required this.events_url,
    required this.received_events_url,
    required this.type,
    required this.site_admin,
  });

  factory GithubUsersFollowersModels.fromJson(Map<String, dynamic> json) =>
      _$GithubUsersFollowersModelsFromJson(json);

  Map<String, dynamic> toJson() => _$GithubUsersFollowersModelsToJson(this);
}
