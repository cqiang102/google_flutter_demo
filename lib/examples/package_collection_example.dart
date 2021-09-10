import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class PackageCollectionExample extends StatefulWidget {
  const PackageCollectionExample({Key? key}) : super(key: key);

  @override
  State<PackageCollectionExample> createState() => _PackageCollectionExampleState();
}

class _PackageCollectionExampleState extends State<PackageCollectionExample> {
  @override
  Widget build(BuildContext context) {
    demo1();
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("")
        ],
      ),
    );
  }
  demo1(){
    List<String> _a = ['Name','Age','Class','Address','Height'];
    List<String> _b = ['Name','Weight','Sex','Class','Address'];
    print(const ListEquality().equals(_a, _b));
    print(const DeepCollectionEquality().equals(_a, _b));
    // Queue
    var q = PriorityQueue<int>((x,y)=> x>y?x:y);
    q.addAll([2,3,4,5,1,2]);
    print(q);
    q.removeFirst();
    print(q);
    // 不可修改的集合
    UnmodifiableListView a= UnmodifiableListView(_a);
    // 分组
    var d = groupBy(q.toList(), (p0) {
      return (p0 as int) % 2;
    });
    print(d);
    print(q.toList().sum);
    print(q.toList().average);
  }
}
