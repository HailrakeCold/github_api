import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../mgr/redux/state.dart';

class UserGistsScreen extends StatefulWidget {
  const UserGistsScreen({Key? key}) : super(key: key);

  @override
  State<UserGistsScreen> createState() => _UserGistsScreenState();
}

class _UserGistsScreenState extends State<UserGistsScreen> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(title: const Text('User Gists Screen')),
              body: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(children: [
                      Text(
                        state.usersModels.login + "'s Gists",
                        style: const TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        height: 600.h,
                        width: 670.w,
                        child: ListView.builder(
                          itemCount: state.userGistsList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 200.w,
                              height: 200.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Center(
                                    child: Text(
                                      'Gist id: ' +
                                          state.userGistsList[index].id,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "Url of Gist: " +
                                          state.userGistsList[index].url,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 70.h,
                                  // ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      MaterialButton(
                                        elevation: 5.0,
                                        onPressed: () {},
                                        child: const Text(
                                          'Folks',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                      MaterialButton(
                                        elevation: 5.0,
                                        onPressed: () {},
                                        child: const Text(
                                          'Commits',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                      MaterialButton(
                                        elevation: 5.0,
                                        onPressed: () {},
                                        child: const Text(
                                          'Truncated',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ]),
                  )));
        });
  }
}
