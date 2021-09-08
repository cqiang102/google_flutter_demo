import 'package:flutter/material.dart';

class BuilderExample extends StatefulWidget {
  const BuilderExample({Key? key}) : super(key: key);

  @override
  State<BuilderExample> createState() => _BuilderExampleState();
}

class _BuilderExampleState extends State<BuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$context",
            style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
                color: Colors.blue),
          ),
          const SizedBox(height: 20,),
          Builder(
            builder: (context) {
              return Center(
                child: Text(
                  "$context",
                  style: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: Colors.blue),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
