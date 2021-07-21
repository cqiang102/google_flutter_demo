import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_flutter_demo/util.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            )),
        Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.lightBlue,
                    )),
              ],
            )),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    pagePop(context);
                  },
                  child: Container(
                    color: Colors.white,
                    constraints: const BoxConstraints(
                        minWidth: double.infinity,
                        minHeight: double.infinity
                    ),
                    child: const Icon(
                      CupertinoIcons.back,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.orange,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
