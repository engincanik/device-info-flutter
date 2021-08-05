import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var devInfo;
  Future<void> getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
      devInfo = androidDeviceInfo;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      devInfo = iosDeviceInfo;
    }
  }

  @override
  void initState() {
    super.initState();
    getDeviceInfo();
    Future.delayed(
      Duration(seconds: 5),
      () => {
        Get.offNamed('/home', arguments: [devInfo])
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF80CECDD),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 256,
              width: 256,
              child: SvgPicture.asset(
                "assets/smartphone.svg",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 0),
              child: SizedBox(
                child: Text(
                  'Device Informer',
                  style:
                      TextStyle(color: Colors.deepOrangeAccent, fontSize: 24.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
