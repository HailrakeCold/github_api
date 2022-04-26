import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../mgr/redux/state.dart';

class UserReposScreen extends StatefulWidget {
  const UserReposScreen({Key? key}) : super(key: key);

  @override
  State<UserReposScreen> createState() => _UserReposScreenState();
}

class _UserReposScreenState extends State<UserReposScreen> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('User Repos Screen')),
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(
                    state.usersModels.login + "'s Repos",
                    style: const TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Column(children: <Widget>[
                      SizedBox(
                        height: 600.h,
                        width: 670.w,
                        child: ListView.builder(
                            itemCount: state.userReposList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  height: 110.h,
                                  width: 600.w,
                                  margin: EdgeInsets.symmetric(vertical: 5.h),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Repos ID: " +
                                            state.userReposList[index].id
                                                .toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Times New Roman',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    state.userReposList[index]
                                                        .full_name,
                                                    style: const TextStyle(
                                                        fontFamily:
                                                            'Times New Roman',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    state.userReposList[index]
                                                        .name,
                                                    style: const TextStyle(
                                                        fontFamily:
                                                            'Times New Roman',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          state.userReposList[index].private
                                              ? const Text(
                                                  'Private',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Times New Roman',
                                                      fontSize: 16,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              : Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                    border: Border.all(
                                                        color: Colors.black),
                                                  ),
                                                  child: const Text(
                                                    'Public',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Times New Roman',
                                                        fontSize: 16,
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                          Row(
                                            children: [
                                              const Icon(Icons.star),
                                              Text(state.userReposList[index]
                                                  .stargazers_count
                                                  .toString()),
                                              SizedBox(
                                                width: 25.w,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ));
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
