import 'package:flutter/material.dart';

class ExpansionPanelExample extends StatefulWidget {
  const ExpansionPanelExample({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelExample> createState() => _ExpansionPanelExampleState();
}

class _ExpansionPanelExampleState extends State<ExpansionPanelExample> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: Colors.white,
      child: SingleChildScrollView(
        child: ExpansionPanelList(
            expansionCallback: (i, open) => setState(() => isOpen = !isOpen),
            children: [
              ExpansionPanel(
                isExpanded: isOpen,
                headerBuilder: (context, isExpanded) {
                  return const Text("123");
                },
                body: const Text("456"),
              ),
              ExpansionPanel(
                isExpanded: !isOpen,
                headerBuilder: (context, isExpanded) {
                  return const Text("123");
                },
                body: const Text("456"),
              ),
              ExpansionPanel(
                isExpanded: isOpen,
                headerBuilder: (context, isExpanded) {
                  return const Text("123");
                },
                body: const Text("456"),
              )
            ]),
      ),
    );
  }
}
