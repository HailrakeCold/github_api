import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_api/UI/pages/home_page.dart';
import 'package:github_api/mgr/redux/action.dart';

import '../../mgr/redux/state.dart';

class EnteringPage extends StatefulWidget {
  const EnteringPage({Key? key}) : super(key: key);
  @override
  State<EnteringPage> createState() => _EnteringPageState();
}

TextEditingController customController = TextEditingController();

class _EnteringPageState extends State<EnteringPage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: const Text('First page I dont know')),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Enter your GitHub nickname',
                    style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                  Container(
                    height: 40.h,
                    width: 500.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    child: TextField(
                      controller: customController,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'Enter your  Name',
                    style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                  Container(
                    height: 40.h,
                    width: 500.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    child: TextField(),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextButton(
                    onPressed: () async {
                      await appStore.dispatch(GetUsersAction(
                          enteredName: customController.text,
                          context: context));
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
