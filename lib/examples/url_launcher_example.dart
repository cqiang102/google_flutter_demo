import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherExample extends StatefulWidget {
  const UrlLauncherExample({Key? key}) : super(key: key);

  @override
  State<UrlLauncherExample> createState() => _UrlLauncherExampleState();
}

class _UrlLauncherExampleState extends State<UrlLauncherExample> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                const url = "https://blog.lacia.cn";
                if(await canLaunch(url)){

                await launch(url);
                }else {
                  throw "Could not launch $url ";
                }
              },
              child: Text("My Blog"),
            ),
            TextButton(
              onPressed: () async {
                const url = "tel:+86 18379790000";
                if(await canLaunch(url)){

                  await launch(url);
                }else {
                  throw "Could not launch $url ";
                }
              },
              child: Text("phone"),
            )
          ],
        ),
      ),
    );
  }
}
