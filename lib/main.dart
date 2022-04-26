import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_api/UI/pages/home_page.dart';

import 'UI/pages/entering_page.dart';
import 'mgr/redux/state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: appStore,
      child: ScreenUtilInit(
        designSize: const Size(720, 800),
        builder: (_) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'TEST ',
            home: EnteringPage(),
          );
        },
      ),
    );
  }
}
