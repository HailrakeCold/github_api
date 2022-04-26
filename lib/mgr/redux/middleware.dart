import 'dart:convert';
import 'package:github_api/models/github_users_followers_models.dart';
import 'package:github_api/models/github_users_following_models.dart';
import 'package:github_api/models/github_users_gists_models.dart';
import 'package:github_api/models/github_users_orgs_models.dart';
import 'package:github_api/models/github_users_repos_models.dart';
import 'package:github_api/models/github_users_subscriptions_models.dart';
import 'package:http/http.dart' as http;
import 'package:github_api/mgr/redux/action.dart';
import 'package:github_api/mgr/redux/state.dart';
import 'package:redux/redux.dart';
import '../../UI/pages/home_page.dart';
import '../../models/github_users_models.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class AppMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    switch (action.runtimeType) {
      case GetUsersAction:
        return _getUsersAction(store.state, next, action);
      case GetUsersFollowersAction:
        return _getUsersFollowersAction(store.state, next, action);
      case GetUsersFollowingAction:
        return _getUsersFollowingAction(store.state, next, action);
      case GetUsersGistsAction:
        return _getUsersGistsAction(store.state, next, action);
      case GetUsersOrgsAction:
        return _getUsersOrgsAction(store.state, next, action);
      case GetUsersReposAction:
        return _getUsersReposAction(store.state, next, action);
      case GetUsersSubscriptionsAction:
        return _getUsersSubscriptionsAction(store.state, next, action);
      default:
        next(action);
    }
  }
//0986

  _getUsersAction(
      AppState state, NextDispatcher next, GetUsersAction action) async {
    var url = Uri.https(
      Constants.site,
      Constants.users + '/' + action.enteredName,
    );
    var response =
        await http.get(url, headers: {'Content-type': "application/json"});
    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);
      var userModel = GithubUsersModels.fromJson(decoded);

      next(UpdateAction(userModel: userModel));
      Navigator.of(action.context)
          .push(MaterialPageRoute(builder: (_) => HomePage()));
    }
  }

  _getUsersFollowersAction(AppState state, NextDispatcher next,
      GetUsersFollowersAction action) async {
    var url = Uri.https(
      Constants.site,
      Constants.users + "/${state.usersModels.login}" + Constants.followers,
    );
    List<GithubUsersFollowersModels> userFollowersList = [];
    var response =
        await http.get(url, headers: {'Content-type': "application/json"});
    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);

      for (int index = 0; index < decoded.length; index++) {
        userFollowersList
            .add(GithubUsersFollowersModels.fromJson(decoded[index]));
      }
      next(UpdateAction(userFollowersList: userFollowersList));
    }
  }
}

_getUsersFollowingAction(
    AppState state, NextDispatcher next, GetUsersFollowingAction action) async {
  var url = Uri.https(
    Constants.site,
    Constants.users + "/${state.usersModels.login}" + Constants.following,
  );
  List<GithubUsersFollowingModels> userFollowingList = [];
  var response =
      await http.get(url, headers: {'Content-type': "application/json"});
  if (response.statusCode == 200) {
    var decoded = json.decode(response.body);
    for (int index = 0; index < decoded.length; index++) {
      userFollowingList
          .add(GithubUsersFollowingModels.fromJson(decoded[index]));
    }
    next(UpdateAction(userFollowingList: userFollowingList));
  }
}

_getUsersGistsAction(
    AppState state, NextDispatcher next, GetUsersGistsAction action) async {
  var url = Uri.https(
    Constants.site,
    Constants.users + "/${state.usersModels.login}" + Constants.gists,
  );
  List<GithubUsersGistsModels> userGistsList = [];
  var response =
      await http.get(url, headers: {'Content-type': "application/json"});
  if (response.statusCode == 200) {
    var decoded = json.decode(response.body);
    for (int index = 0; index < decoded.length; index++) {
      userGistsList.add(GithubUsersGistsModels.fromJson(decoded[index]));
    }
    next(UpdateAction(userGistsList: userGistsList));
  }
}

_getUsersOrgsAction(
    AppState state, NextDispatcher next, GetUsersOrgsAction action) async {
  var url = Uri.https(
    Constants.site,
    Constants.users + "/${state.usersModels.login}" + Constants.orgs,
  );
  List<GithubUsersOrgsModels> orgsList = [];
  var response =
      await http.get(url, headers: {'Content-type': "application/json"});
  if (response.statusCode == 200) {
    var decoded = json.decode(response.body);
    for (int index = 0; index < decoded.length; index++) {
      orgsList.add(GithubUsersOrgsModels.fromJson(decoded[index]));
    }
    next(UpdateAction(userOrgsList: orgsList));
  }
}

_getUsersReposAction(
    AppState state, NextDispatcher next, GetUsersReposAction action) async {
  var url = Uri.https(
    Constants.site,
    Constants.users + "/${state.usersModels.login}" + Constants.repos,
  );
  List<GithubUsersReposModels> userReposList = [];
  var response =
      await http.get(url, headers: {'Content-type': "application/json"});
  if (response.statusCode == 200) {
    var decoded = json.decode(response.body);
    for (int index = 0; index < decoded.length; index++) {
      userReposList.add(GithubUsersReposModels.fromJson(decoded[index]));
    }
    next(UpdateAction(userReposList: userReposList));
  }
}

_getUsersSubscriptionsAction(AppState state, NextDispatcher next,
    GetUsersSubscriptionsAction action) async {
  var url = Uri.https(
    Constants.site,
    Constants.users + "/${state.usersModels.login}" + Constants.subscriptions,
  );
  List<GithubUsersSubscriptionsModels> userSubscriptionsList = [];
  var response =
      await http.get(url, headers: {'Content-type': "application/json"});
  if (response.statusCode == 200) {
    var decoded = json.decode(response.body);
    for (int index = 0; index < decoded.length; index++) {
      userSubscriptionsList
          .add(GithubUsersSubscriptionsModels.fromJson(decoded[index]));
    }
    next(UpdateAction(userSubscriptionsList: userSubscriptionsList));
  }
}
