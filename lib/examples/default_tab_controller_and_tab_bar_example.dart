import 'package:flutter/material.dart';

class DefaultTabControllerAndTabBarExample extends StatelessWidget {
  const DefaultTabControllerAndTabBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Cat",
              ),
              Tab(
                text: "Dog",
              ),
              Tab(
                text: "Rabbit",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Text("I am Cat"),
            Text("I am Dog"),
            Text("I am Rabbit"),
          ],
        ),
      ),
    );
  }
}
