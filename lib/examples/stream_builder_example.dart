import 'package:flutter/material.dart';

class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({Key? key}) : super(key: key);

  @override
  _StreamBuilderExampleState createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  Stream<int> count() async* {
    int i = 1;
//    await Future.delayed(const Duration(seconds: 2));
    while (true) {
      await Future.delayed(const Duration(seconds: 2));
      yield i++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: StreamBuilder(
          stream: count(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (!snapshot.hasData) {
              return const LinearProgressIndicator();
            }

            return Text(
              "data : ${snapshot.data}",
              style: const TextStyle(
                  color: Colors.blue, decoration: TextDecoration.none),
            );
          },
        ),
      ),
    );
  }
}
