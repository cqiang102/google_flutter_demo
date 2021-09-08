import 'package:flutter/material.dart';

class NotificationListenerExample extends StatefulWidget {
  const NotificationListenerExample({Key? key}) : super(key: key);

  @override
  _NotificationListenerExampleState createState() =>
      _NotificationListenerExampleState();
}

class _NotificationListenerExampleState
    extends State<NotificationListenerExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: NotificationListener<MyNotification>(
        onNotification: (myNotification) {
          print("1 ${myNotification.msg}");
          return true;
        },
        child: NotificationListener<MyNotification>(
          onNotification: (myNotification) {
            print("2 ${myNotification.msg}");
            return true;
          },
          child: Center(
            child: Builder(builder: (context) {
              return TextButton(
                child: const Text("Click"),
                onPressed: () {
                  MyNotification("click").dispatch(context);
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}

class MyNotification extends Notification {
  final String msg;

  MyNotification(this.msg);
}
