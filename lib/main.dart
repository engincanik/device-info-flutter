import 'package:device_informer/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_screen.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Device Informer',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/splash',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
        ),
      ],
      initialRoute: '/splash',
    );
  }
}
