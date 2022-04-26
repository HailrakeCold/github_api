// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_users_orgs_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubUsersOrgsModels _$GithubUsersOrgsModelsFromJson(
        Map<String, dynamic> json) =>
    GithubUsersOrgsModels(
      login: json['login'] as String,
      id: json['id'] as int,
      node_id: json['node_id'] as String,
      url: json['url'] as String,
      repos_url: json['repos_url'] as String,
      events_url: json['events_url'] as String,
      hooks_url: json['hooks_url'] as String,
      issues_url: json['issues_url'] as String,
      members_url: json['members_url'] as String,
      public_members_url: json['public_members_url'] as String,
      avatar_url: json['avatar_url'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$GithubUsersOrgsModelsToJson(
        GithubUsersOrgsModels instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.node_id,
      'url': instance.url,
      'repos_url': instance.repos_url,
      'events_url': instance.events_url,
      'hooks_url': instance.hooks_url,
      'issues_url': instance.issues_url,
      'members_url': instance.members_url,
      'public_members_url': instance.public_members_url,
      'avatar_url': instance.avatar_url,
      'description': instance.description,
    };
