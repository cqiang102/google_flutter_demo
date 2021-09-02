import 'package:flutter/material.dart';

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.purple,
              ),
            ),
            floating: true,
            expandedHeight: 200,
            title: const Text("SliverAppBar"),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 100,
                color: Colors.purple,
              ),
            ]),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              Container(
                height: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 100,
                color: Colors.purple,
              ),
            ],
          )
        ],
      ),
    );
  }
}
