import 'dart:io';

import 'package:device_informer/home/android_info_widget.dart';
import 'package:device_informer/home/ios_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Platform.isAndroid == true
                ? AndroidInfoWidget(argument: Get.arguments[0])
                : IosInfoWidget(argument: Get.arguments[0]),
          ),
        ),
      ),
    );
  }
}
