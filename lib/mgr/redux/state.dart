import 'package:github_api/mgr/redux/reducer.dart';
import 'package:github_api/models/github_users_followers_models.dart';
import 'package:github_api/models/github_users_following_models.dart';
import 'package:github_api/models/github_users_gists_models.dart';
import 'package:github_api/models/github_users_orgs_models.dart';
import 'package:github_api/models/github_users_repos_models.dart';
import 'package:github_api/models/github_users_subscriptions_models.dart';
import 'package:redux/redux.dart';

import '../../models/github_users_models.dart';
import 'middleware.dart';

final appStore = Store<AppState>(
  appReducer,
  initialState: AppState.initial(),
  middleware: [AppMiddleware()],
);

class AppState {
  final List<GithubUsersFollowersModels> userFollowersList;
  final List<GithubUsersFollowingModels> userFollowingList;
  final List<GithubUsersGistsModels> userGistsList;
  final GithubUsersModels usersModels;
  final List<GithubUsersOrgsModels> userOrgsList;
  final List<GithubUsersReposModels> userReposList;
  final List<GithubUsersSubscriptionsModels> userSubscriptionsList;

  AppState({
    required this.userFollowersList,
    required this.userFollowingList,
    required this.userGistsList,
    required this.usersModels,
    required this.userOrgsList,
    required this.userReposList,
    required this.userSubscriptionsList,
  });

  factory AppState.initial() {
    return AppState(
      userFollowersList: [],
      userFollowingList: [],
      userGistsList: [],
      usersModels: GithubUsersModels(
          avatar_url: '',
          followers_url: '',
          following_url: '',
          gists_url: '',
          html_url: '',
          id: -1,
          login: '',
          organizations_url: '',
          repos_url: '',
          site_admin: false,
          subscriptions_url: '',
          type: '',
          url: ''),
      userOrgsList: [],
      userReposList: [],
      userSubscriptionsList: [],
    );
  }

  AppState copyWith({
    List<GithubUsersFollowersModels>? userFollowersList,
    List<GithubUsersFollowingModels>? userFollowingList,
    List<GithubUsersGistsModels>? userGistsList,
    GithubUsersModels? usersModels,
    List<GithubUsersOrgsModels>? userOrgsList,
    List<GithubUsersReposModels>? userReposList,
    List<GithubUsersSubscriptionsModels>? userSubscriptionsList,
  }) {
    return AppState(
      userFollowersList: userFollowersList ?? this.userFollowersList,
      userFollowingList: userFollowingList ?? this.userFollowingList,
      userGistsList: userGistsList ?? this.userGistsList,
      usersModels: usersModels ?? this.usersModels,
      userOrgsList: userOrgsList ?? this.userOrgsList,
      userReposList: userReposList ?? this.userReposList,
      userSubscriptionsList:
          userSubscriptionsList ?? this.userSubscriptionsList,
    );
  }
}
