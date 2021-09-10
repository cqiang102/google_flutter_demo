import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class PackageConnectivityExample extends StatelessWidget {
  const PackageConnectivityExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: GestureDetector(
          onTap: (){
            getConnectivity();
          },
          child: Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }

  getConnectivity() async {
    var _connectivity = await Connectivity();
    var _connectivityStatus = await _connectivity.checkConnectivity();
    print(_connectivity);
    print(_connectivityStatus);
    if(ConnectivityResult.mobile == _connectivityStatus){
      print("正在使用流量~~~");
    }else if(ConnectivityResult.wifi == _connectivityStatus){
      print("正在使用 Wifi ~~~");
    }else if(ConnectivityResult.none == _connectivityStatus){
      print("QAQ 网络不通畅");
    }

    _connectivity.onConnectivityChanged.listen((event) {
      if(ConnectivityResult.mobile == event){
        print("正在使用流量~~~");
      }else if(ConnectivityResult.wifi == event){
        print("正在使用 Wifi ~~~");
      }else if(ConnectivityResult.none == event){
        print("QAQ 网络不通畅");
      }
    });
  }
}
