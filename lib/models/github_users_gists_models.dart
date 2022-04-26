import 'package:json_annotation/json_annotation.dart';
part 'github_users_gists_models.g.dart';

@JsonSerializable()
class GithubUsersGistsModels {
  String url;
  String id;
  String forks_url;
  String commits_url;
  String git_pull_url;
  String git_push_url;
  String html_url;
  bool truncated;

  @override
  GithubUsersGistsModels({
    required this.url,
    required this.id,
    required this.commits_url,
    required this.forks_url,
    required this.git_pull_url,
    required this.git_push_url,
    required this.html_url,
    required this.truncated,
  });

  factory GithubUsersGistsModels.fromJson(Map<String, dynamic> json) =>
      _$GithubUsersGistsModelsFromJson(json);

  Map<String, dynamic> toJson() => _$GithubUsersGistsModelsToJson(this);
}
