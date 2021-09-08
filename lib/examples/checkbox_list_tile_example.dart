import 'package:flutter/material.dart';

class CheckboxListTileExample extends StatefulWidget {
  const CheckboxListTileExample({Key? key}) : super(key: key);

  @override
  State<CheckboxListTileExample> createState() =>
      _CheckboxListTileExampleState();
}

class _CheckboxListTileExampleState extends State<CheckboxListTileExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: CheckboxListTile(
          value: selected,
          onChanged: (value) => setState(() => selected = !selected),
          title: const Text("CheckboxListTile"),
          dense: true,
          controlAffinity: ListTileControlAffinity.leading,
          secondary: const Icon(Icons.style),
        ),
      ),
    );
  }
}
