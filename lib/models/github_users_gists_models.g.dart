// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_users_gists_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubUsersGistsModels _$GithubUsersGistsModelsFromJson(
        Map<String, dynamic> json) =>
    GithubUsersGistsModels(
      url: json['url'] as String,
      id: json['id'] as String,
      commits_url: json['commits_url'] as String,
      forks_url: json['forks_url'] as String,
      git_pull_url: json['git_pull_url'] as String,
      git_push_url: json['git_push_url'] as String,
      html_url: json['html_url'] as String,
      truncated: json['truncated'] as bool,
    );

Map<String, dynamic> _$GithubUsersGistsModelsToJson(
        GithubUsersGistsModels instance) =>
    <String, dynamic>{
      'url': instance.url,
      'id': instance.id,
      'forks_url': instance.forks_url,
      'commits_url': instance.commits_url,
      'git_pull_url': instance.git_pull_url,
      'git_push_url': instance.git_push_url,
      'html_url': instance.html_url,
      'truncated': instance.truncated,
    };
