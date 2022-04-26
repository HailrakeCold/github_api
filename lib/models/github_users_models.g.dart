// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_users_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubUsersModels _$GithubUsersModelsFromJson(Map<String, dynamic> json) =>
    GithubUsersModels(
      login: json['login'] as String,
      id: json['id'] as int,
      avatar_url: json['avatar_url'] as String,
      url: json['url'] as String,
      html_url: json['html_url'] as String,
      gists_url: json['gists_url'] as String,
      subscriptions_url: json['subscriptions_url'] as String,
      organizations_url: json['organizations_url'] as String,
      repos_url: json['repos_url'] as String,
      site_admin: json['site_admin'] as bool,
      type: json['type'] as String,
      followers_url: json['followers_url'] as String,
      following_url: json['following_url'] as String,
    );

Map<String, dynamic> _$GithubUsersModelsToJson(GithubUsersModels instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatar_url,
      'url': instance.url,
      'html_url': instance.html_url,
      'followers_url': instance.followers_url,
      'following_url': instance.following_url,
      'gists_url': instance.gists_url,
      'subscriptions_url': instance.subscriptions_url,
      'organizations_url': instance.organizations_url,
      'repos_url': instance.repos_url,
      'type': instance.type,
      'site_admin': instance.site_admin,
    };
