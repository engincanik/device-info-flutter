import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

class AndroidInfoWidget extends StatelessWidget {
  const AndroidInfoWidget({Key key, this.argument}) : super(key: key);
  final AndroidDeviceInfo argument;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Manufacturer: ${argument.manufacturer}"),
        Text("Device: ${argument.device}"),
        Text("Brand: ${argument.brand}"),
        Text("Model: ${argument.model}"),
        Text("Board: ${argument.board}"),
        Text("Display: ${argument.display}"),
        Text("Version: ${argument.version.release}"),
        Text("Android ID: ${argument.androidId}"),
        Text("Hardware: ${argument.hardware}"),
        Text("Physical Device: ${argument.isPhysicalDevice}"),
      ],
    );
  }
}
