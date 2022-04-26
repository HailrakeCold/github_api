import 'package:flutter/cupertino.dart';
import 'package:github_api/models/github_users_followers_models.dart';
import 'package:github_api/models/github_users_following_models.dart';
import 'package:github_api/models/github_users_gists_models.dart';
import 'package:github_api/models/github_users_models.dart';
import 'package:github_api/models/github_users_orgs_models.dart';
import 'package:github_api/models/github_users_repos_models.dart';
import 'package:github_api/models/github_users_subscriptions_models.dart';

class UpdateAction {
  List<GithubUsersFollowersModels>? userFollowersList;
  List<GithubUsersFollowingModels>? userFollowingList;
  List<GithubUsersGistsModels>? userGistsList;
  GithubUsersModels? userModel;
  List<GithubUsersOrgsModels>? userOrgsList;
  List<GithubUsersReposModels>? userReposList;
  List<GithubUsersSubscriptionsModels>? userSubscriptionsList;
  UpdateAction({
    this.userFollowersList,
    this.userFollowingList,
    this.userGistsList,
    this.userModel,
    this.userOrgsList,
    this.userReposList,
    this.userSubscriptionsList,
  });
}

class GetUsersAction {
  String enteredName;
  BuildContext context;
  GetUsersAction({
    required this.enteredName,
    required this.context,
  });
}

class GetUsersFollowersAction {}

class GetUsersFollowingAction {}

class GetUsersGistsAction {}

class GetUsersOrgsAction {}

class GetUsersReposAction {}

class GetUsersSubscriptionsAction {}
