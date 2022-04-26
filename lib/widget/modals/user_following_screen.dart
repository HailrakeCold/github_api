import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../mgr/redux/state.dart';

class UserFollowingScreen extends StatefulWidget {
  const UserFollowingScreen({Key? key}) : super(key: key);

  @override
  State<UserFollowingScreen> createState() => _UserFollowersScreenState();
}

class _UserFollowersScreenState extends State<UserFollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('User Following Screen')),
          body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(
                    state.usersModels.login + "'s Followings",
                    style: const TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Column(children: <Widget>[
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 400.h,
                        width: 650.w,
                        child: ListView.builder(
                            itemCount: state.userFollowingList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 5.h),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(state
                                                  .userFollowingList[index]
                                                  .avatar_url),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30.w,
                                      ),
                                      Text(
                                        state.userFollowingList[index].login,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ]),
                  ]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
