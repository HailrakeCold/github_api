// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_users_subscriptions_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubUsersSubscriptionsModels _$GithubUsersSubscriptionsModelsFromJson(
        Map<String, dynamic> json) =>
    GithubUsersSubscriptionsModels(
      full_name: json['full_name'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      node_id: json['node_id'] as String,
      private: json['private'] as bool,
    );

Map<String, dynamic> _$GithubUsersSubscriptionsModelsToJson(
        GithubUsersSubscriptionsModels instance) =>
    <String, dynamic>{
      'node_id': instance.node_id,
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.full_name,
      'private': instance.private,
    };
