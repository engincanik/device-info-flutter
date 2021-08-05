import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';

class IosInfoWidget extends StatelessWidget {
  const IosInfoWidget({Key key, this.argument}) : super(key: key);
  final IosDeviceInfo argument;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Physical Device: ${argument.isPhysicalDevice}"),
        Text("Model: ${argument.model}"),
        Text("Name: ${argument.name}"),
        Text("System Name: ${argument.systemName}"),
      ],
    );
  }
}
