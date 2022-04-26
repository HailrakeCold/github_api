import 'package:json_annotation/json_annotation.dart';
part 'github_users_repos_models.g.dart';

@JsonSerializable()
class GithubUsersReposModels {
  String node_id;
  int id;
  String name;
  String full_name;
  bool private;
  int stargazers_count;

  @override
  GithubUsersReposModels({
    required this.stargazers_count,
    required this.node_id,
    required this.id,
    required this.name,
    required this.full_name,
    required this.private,
  });

  factory GithubUsersReposModels.fromJson(Map<String, dynamic> json) =>
      _$GithubUsersReposModelsFromJson(json);

  Map<String, dynamic> toJson() => _$GithubUsersReposModelsToJson(this);
}
