// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_users_repos_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubUsersReposModels _$GithubUsersReposModelsFromJson(
        Map<String, dynamic> json) =>
    GithubUsersReposModels(
      stargazers_count: json['stargazers_count'] as int,
      node_id: json['node_id'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      full_name: json['full_name'] as String,
      private: json['private'] as bool,
    );

Map<String, dynamic> _$GithubUsersReposModelsToJson(
        GithubUsersReposModels instance) =>
    <String, dynamic>{
      'node_id': instance.node_id,
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.full_name,
      'private': instance.private,
      'stargazers_count': instance.stargazers_count,
    };
