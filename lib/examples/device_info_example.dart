
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DeviceInfoExample extends StatefulWidget {
  const DeviceInfoExample({Key? key}) : super(key: key);

  @override
  State<DeviceInfoExample> createState() => _DeviceInfoExampleState();
}

class _DeviceInfoExampleState extends State<DeviceInfoExample> {
  @override
  void initState() {
    //  implement initState
    getInfo();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(),);
  }

  var deviceInfo = DeviceInfoPlugin();

  getInfo() async {
    if(kIsWeb){
      var webBrowserInfo = await deviceInfo.webBrowserInfo;
      print("${webBrowserInfo.browserName}");
    } else if(Platform.isAndroid){
      var androidInfo = await deviceInfo.androidInfo;
      print("${androidInfo}");
    }else if(Platform.isLinux){
      var linuxInfo = await deviceInfo.linuxInfo;
      print("$linuxInfo");
    }else if(Platform.isIOS || Platform.isFuchsia || Platform.isMacOS || Platform.isWindows){

    }else{

    }
  }
}
