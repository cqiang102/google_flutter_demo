import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class PackageConnectivityExample extends StatelessWidget {
  const PackageConnectivityExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO Unhandled Exception: MissingPluginException(No implementation found for method check on channel dev.fluttercommunity.plus/connectivity)
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
  }
}
