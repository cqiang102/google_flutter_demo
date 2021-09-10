import 'package:flutter/material.dart';

class SwitchListTileExample extends StatefulWidget {
  const SwitchListTileExample({Key? key}) : super(key: key);

  @override
  State<SwitchListTileExample> createState() => _SwitchListTileExampleState();
}

class _SwitchListTileExampleState extends State<SwitchListTileExample> {
  bool switchValue = false;
  bool radioValue = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
                title: const Text("SwitchListTile"),
                value: switchValue,
                onChanged: (value) => setState(() => switchValue = !switchValue)),
            RadioListTile(
              title: const Text("RadioListTile"),
                value: false,
                controlAffinity: ListTileControlAffinity.trailing,
                groupValue: radioValue,
                secondary: const Icon(Icons.biotech),
                onChanged: (value) => setState(() => radioValue = !radioValue)),
            RadioListTile(
                title: const Text("RadioListTile"),
                value: true,
                controlAffinity: ListTileControlAffinity.trailing,
                secondary: const Icon(Icons.local_fire_department),
                groupValue: radioValue,
                onChanged: (value) => setState(() => radioValue = !radioValue)),
          ],
        ),
      ),
    );
  }
}
