import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_api/widget/modals/user_followers_screen.dart';
import 'package:github_api/widget/modals/user_repos_screen.dart';
import '../../mgr/redux/action.dart';
import '../../mgr/redux/state.dart';
import '../../widget/modals/user_following_screen.dart';
import '../../widget/modals/user_gists_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: const Text('First Page')),
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 130.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      state.usersModels.avatar_url),
                                  fit: BoxFit.cover)),
                          child: TextButton(
                            onPressed: () async {
                              createAlertDialog(context);
                            },
                            child: const Text(''),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 20.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          child: Center(
                              child: Text(
                            (state.usersModels.login),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 1.w,
                      height: 800,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        const Text(
                          'Recent Activity',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "October Devanagari"),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        SizedBox(
                          width: 200.w,
                          height: 380.h,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton(
                                    onPressed: () async {
                                      appStore
                                          .dispatch(GetUsersFollowersAction());
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const UserFollowersScreen()));
                                    },
                                    child: Text(state.usersModels.login +
                                        "'s Followers")),
                                TextButton(
                                    onPressed: () {
                                      appStore
                                          .dispatch(GetUsersFollowingAction());
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const UserFollowingScreen()));
                                    },
                                    child: Text(state.usersModels.login +
                                        "'s Followings")),
                                TextButton(
                                    onPressed: () {
                                      appStore.dispatch(GetUsersGistsAction());
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const UserGistsScreen()));
                                    },
                                    child: Text(
                                        state.usersModels.login + "'s Gists")),
                                TextButton(
                                    onPressed: () {
                                      appStore.dispatch(GetUsersReposAction());
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const UserReposScreen()));
                                    },
                                    child: Text(
                                        state.usersModels.login + "'s Repos")),
                              ]),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        const Text(
                          'Recent Activity',
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 200.w,
                          child: const Text(
                            'When you take actions across GitHub, we’ll provide links to that activity here.',
                            style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: <Widget>[
            Center(
              child: SizedBox(
                height: 300.h,
                width: 300.w,
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.all(5.h.w),
                    width: 350.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                          appStore.dispatch(GetUsersFollowersAction());
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const UserFollowersScreen()));
                        },
                        child: const Text("User's Followers")),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.h.w),
                    width: 350.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                          appStore.dispatch(GetUsersFollowersAction());
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const UserFollowingScreen()));
                        },
                        child: const Text("User's Followings")),
                  ),
                  Container(
                      margin: EdgeInsets.all(5.h.w),
                      width: 350.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context, true);
                            appStore.dispatch(GetUsersFollowersAction());
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const UserGistsScreen()));
                          },
                          child: const Text("User's Gists"))),
                  Container(
                      margin: EdgeInsets.all(5.h.w),
                      width: 350.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context, true);
                            appStore.dispatch(GetUsersFollowersAction());
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const UserReposScreen()));
                          },
                          child: const Text("User's Repos"))),
                  Container(
                    margin: EdgeInsets.all(5.h.w),
                    color: Colors.grey[200],
                    child: MaterialButton(
                      elevation: 5.0,
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: const Text('Exit'),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        );
      },
    );
  }
}
