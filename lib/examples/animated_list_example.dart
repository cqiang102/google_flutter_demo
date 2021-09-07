import 'package:flutter/material.dart';

class AnimatedListExample extends StatelessWidget {
  AnimatedListExample({Key? key}) : super(key: key);
  final _ListKey = GlobalKey<AnimatedListState>();
  final item = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(38.0),
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: AnimatedList(
              key: _ListKey,
              initialItemCount: item.length,
              itemBuilder: (context, index, animation) {
                return SlideTransition(
                  position: animation
                      .drive(
                        CurveTween(curve: Curves.easeInCirc),
                      )
                      .drive(Tween<Offset>(
                          begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))),
                  child: Text(
                    "${item[index]}",
                    style: const TextStyle(
                        fontSize: 22,
                        color: Colors.blue,
                        decoration: TextDecoration.none),
                  ),
                );
              },
            ),
          ),
          TextButton(
              onPressed: () {
                int index = item.last;
                item.add(index+1);

                _ListKey.currentState!.insertItem(index);
              },
              child: const Text("insert")),
          TextButton(
              onPressed: () {
                int index = item.last-1;
                item.removeAt(index);

                _ListKey.currentState!.removeItem(
                    index,
                    (context, animation) => SlideTransition(
                          position: animation
                              .drive(
                                CurveTween(curve: Curves.bounceInOut),
                              )
                              .drive(Tween<Offset>(
                                  begin: const Offset(1.0, 0.0),
                                  end: const Offset(0.0, 0.0))),
                          child: Text(
                            "${index+1}",
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.blue,
                                decoration: TextDecoration.none),
                          ),
                        ));

              },
              child: const Text("remove")),
        ],
      ),
    );
  }
}
