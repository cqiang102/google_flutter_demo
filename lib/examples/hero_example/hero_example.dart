import 'package:flutter/material.dart';

import 'hero_page.dart';

class HeroExample extends StatefulWidget {
  const HeroExample({Key? key}) : super(key: key);

  @override
  _HeroExampleState createState() => _HeroExampleState();
}

class _HeroExampleState extends State<HeroExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Wrap(
        runAlignment: WrapAlignment.end,
        alignment: WrapAlignment.center,
        children: [
          Hero(
              tag: "one",
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => Hero(
                              tag: "one",
                              child: HeroPage(
                                color: Colors.red,
                              ),
                            )));
                  },
                  child: Container(
                    color: Colors.red,
                    width: 88,
                    height: 88,
                  ))),
          Hero(
              tag: "two",
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => Hero(
                            tag: "two",
                            child: HeroPage(
                              color: Colors.green,
                            ),
                          )));
                },
                child: Container(
                  color: Colors.green,
                  width: 88,
                  height: 88,
                ),
              )),
          Hero(
              tag: "three",
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => Hero(
                            tag: "three",
                            child: HeroPage(
                              color: Colors.blue,
                            ),
                          )));
                },
                child: Container(
                  color: Colors.blue,
                  width: 88,
                  height: 88,
                ),
              )),
        ],
      ),
    );
  }
}
