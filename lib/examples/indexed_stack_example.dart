import 'package:flutter/material.dart';

class IndexedStackExample extends StatefulWidget {
  const IndexedStackExample({Key? key}) : super(key: key);

  @override
  _IndexedStackExampleState createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  int _stackIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: Column(
      children: [
        Expanded(
          child: IndexedStack(
            alignment: AlignmentDirectional.center,
            index: _stackIndex,
            children: [
              Container(color: Colors.green,width: 180,height: 180,),
              Container(color: Colors.yellow,width: 200,height: 200,),
              Container(color: Colors.red,width: 300,height: 300,),
            ],),
        ),

        TextButton(onPressed: () {
          setState(() {
            _stackIndex++;
            _stackIndex %= 3;
          });
        }, child: const Text("click"),),
      ],
    ),);
  }
}
