import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(child: ListView(
        children: [
          DrawerHeader(child: Container(color: Colors.blue,),),
          Container(color: Colors.green,height: 150,),
          Container(color: Colors.red,height: 150,),
          Container(color: Colors.orange,height: 150,),
        ],
      ),),
      endDrawer: const Drawer(),
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return TextButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Text("click"),
            );
          },
        ),
      ),
    );
  }
}
