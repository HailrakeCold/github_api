import 'package:github_api/mgr/redux/state.dart';

AppState appReducer(AppState state, dynamic action) {
  AppState newState = state.copyWith(
    userFollowersList: action.userFollowersList ?? state.userFollowersList,
    userFollowingList: action.userFollowingList ?? state.userFollowingList,
    userGistsList: action.userGistsList ?? state.userGistsList,
    usersModels: action.userModel ?? state.usersModels,
    userOrgsList: action.userOrgsList ?? state.userOrgsList,
    userReposList: action.userReposList ?? state.userReposList,
    userSubscriptionsList:
        action.userSubscriptionsList ?? state.userSubscriptionsList,
  );

  return newState;
}
