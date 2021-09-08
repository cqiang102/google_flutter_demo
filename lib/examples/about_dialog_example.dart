import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AboutDialogExample extends StatefulWidget {
  const AboutDialogExample({Key? key}) : super(key: key);

  @override
  State<AboutDialogExample> createState() => _AboutDialogExampleState();
}

class _AboutDialogExampleState extends State<AboutDialogExample> {
  @override
  Widget build(BuildContext context) {
    LicenseRegistry.addLicense(() async* {
      yield const LicenseEntryWithLineBreaks(["my_package"], "嘿嘿嘿");
    });
    return Container(
      color: Colors.white,
      child: TextButton(
          child: Text("show about"),
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationVersion: "1.0.0",
              applicationIcon: FlutterLogo(),
              applicationLegalese: "balablalbala...",
              applicationName: "Examples",
              // children: [
              //   TextButton(
              //     onPressed: () {},
              //     child: Text("Ok"),
              //   ),
              //   TextButton(
              //     onPressed: () {},
              //     child: Text("Next"),
              //   ),
              // ],
            );
          }),
    );
  }
}
