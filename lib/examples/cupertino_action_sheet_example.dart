import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetExample extends StatelessWidget {
  const CupertinoActionSheetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextButton(
        onPressed: () async {
          var p = await showCupertinoModalPopup(
              context: context,
              builder: (_) {
                return CupertinoActionSheet(
                  title: const Text("title"),
                  actions: [
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.of(context).pop("1");
                      },
                      child: const Text("Item 1"),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.of(context).pop("2");
                      },
                      child: const Text("Item 2"),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.of(context).pop("3");
                      },
                      child: const Text("Item 3"),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),
                );
              });
          print(p);
        },
        child: Text("click"),
      ),
    );
  }
}
