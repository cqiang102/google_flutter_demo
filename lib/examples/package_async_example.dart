import 'package:flutter/material.dart';
import 'dart:async';

class PackageAsyncExample extends StatefulWidget {
  const PackageAsyncExample({Key? key}) : super(key: key);

  @override
  State<PackageAsyncExample> createState() => _PackageAsyncExampleState();
}

class _PackageAsyncExampleState extends State<PackageAsyncExample> {
  @override
  Widget build(BuildContext context) {
    // Stream
    // TODO ???
    return Container(
      color: Colors.white,
      child: Text(
        "dart:async",
        style: TextStyle(
            fontSize: 22, color: Colors.blue, decoration: TextDecoration.none),
      ),
    );
  }
}
