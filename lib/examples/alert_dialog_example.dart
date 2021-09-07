import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {
  const AlertDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          elevation: 20,
                          title: const Text("我是 Title"),
                          content: const Text("我是内容"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("取消"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("确定"),
                            ),
                          ],
                        ),
                    barrierDismissible: false);
              },
              child: const Text("Material 风格"),
            ),
            TextButton(
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (_) => CupertinoAlertDialog(
                      
                          title: const Text("title"),
                          content: const Text("content"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("取消"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("确定"),
                            ),
                          ],
                        ),
                    barrierDismissible: true);
              },
              child: const Text("Cupertino 风格"),
            ),
          ],
        ),
      ),
    );
  }
}
