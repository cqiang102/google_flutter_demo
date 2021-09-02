import 'package:flutter/material.dart';
import 'package:google_flutter_demo/examples/inherited_model/color_one_widget.dart';
import 'package:google_flutter_demo/examples/inherited_model/color_tow_widget.dart';
import 'package:google_flutter_demo/examples/inherited_model/my_ancestor.dart';

class InheritedModelExample extends StatefulWidget {
  const InheritedModelExample({Key? key}) : super(key: key);

  @override
  _InheritedModelExampleState createState() => _InheritedModelExampleState();
}

class _InheritedModelExampleState extends State<InheritedModelExample> {
  Color colorOne = Colors.yellow;
  Color colorTwo = Colors.red;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: MyAncestor(
        colorOne,
        colorTwo,
        Wrap(
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    if (colorTwo == Colors.blue) {
                      colorTwo = Colors.yellow;
                    } else {
                      colorTwo = Colors.blue;
                    }
                  });
                },
                child: const ColorOneWidget()),
            Center(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (colorOne == Colors.red) {
                        colorOne = Colors.green;
                      } else {
                        colorOne = Colors.red;
                      }
                    });
                  },
                  child: const ColorTwoWidget()),
            ),
          ],
        ),
      ),
    );
  }
}
