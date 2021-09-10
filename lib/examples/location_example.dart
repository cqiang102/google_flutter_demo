import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationExample extends StatefulWidget {
  const LocationExample({Key? key}) : super(key: key);

  @override
  State<LocationExample> createState() => _LocationExampleState();
}

class _LocationExampleState extends State<LocationExample> {
  // TODO 需要 Google Play
  var location = Location();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: GestureDetector(
            onTap: () async {
              print("1");
              var serviceEnabled = await location.serviceEnabled();
              if (!serviceEnabled) {
                serviceEnabled = await location.requestService();
                if (!serviceEnabled) {
                  return;
                }
              }
              var hasPermission = await location.hasPermission();
              if (hasPermission == PermissionStatus.denied) {
                hasPermission = await location.requestPermission();
                if (hasPermission != PermissionStatus.granted) {
                  return;
                }
              }
              print("$serviceEnabled");
              var locationData = await location.getLocation();

              print("$locationData");
              location.onLocationChanged.listen((event) {
                print("$event");
              });
            },
            child: Container(
              color: Colors.blue,
              width: 80,
              height: 80,
            )),
      ),
    );
  }
}
