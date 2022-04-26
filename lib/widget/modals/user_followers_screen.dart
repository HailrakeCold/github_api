import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../mgr/redux/state.dart';

class UserFollowersScreen extends StatefulWidget {
  const UserFollowersScreen({Key? key}) : super(key: key);

  @override
  State<UserFollowersScreen> createState() => _UserFollowersScreenState();
}

class _UserFollowersScreenState extends State<UserFollowersScreen> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('User Friends Screen')),
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(
                    state.usersModels.login + "'s Followers",
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
                        height: 450.h,
                        width: 650.w,
                        child: ListView.builder(
                            itemCount: state.userFollowersList.length,
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
                                                  .userFollowersList[index]
                                                  .avatar_url),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30.w,
                                      ),
                                      Text(
                                        state.userFollowersList[index].login,
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
