import 'package:flutter/material.dart';

class ToggleButtonsExample extends StatefulWidget {
  const ToggleButtonsExample({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsExample> createState() => _ToggleButtonsExampleState();
}

class _ToggleButtonsExampleState extends State<ToggleButtonsExample> {
  final List<bool> _isSelect = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: ToggleButtons(
            isSelected: _isSelect,
            children: const [
              Icon(Icons.label),
              Icon(Icons.edit),
              Icon(Icons.code),
            ],
            onPressed: (index){
              setState(()=> _isSelect[index] = !_isSelect[index]);
            },
          ),
        ),
      ),
    );
  }
}
