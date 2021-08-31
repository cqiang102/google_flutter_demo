import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({Key? key}) : super(key: key);

  @override
  _FutureBuilderExampleState createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: FutureBuilder(
          future: futureBuilder(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(
                "Future Data ${snapshot.data}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  decoration: TextDecoration.none
                ),
              );
            } if(snapshot.hasError){
              return const Text(
                "Error",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    decoration: TextDecoration.none
                ),
              );
            }else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<int> futureBuilder() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }
}
