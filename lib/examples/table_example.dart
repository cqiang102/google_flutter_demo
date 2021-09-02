import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  const TableExample({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      child: Center(
        child: Table(
          defaultColumnWidth: const FixedColumnWidth(50.0),
          columnWidths: const {1: FractionColumnWidth(.2)},
          border: TableBorder.all(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [
              Container(height: 80,color: Colors.lightBlue,),
              Container(height: 50,color: Colors.blueAccent,),
              Container(height: 80,color: Colors.deepOrange,),
              Container(height: 80,color: Colors.pink,),
              Container(height: 50,color: Colors.blueAccent,),
            ]),
            TableRow(children: [
              Container(height: 80,color: Colors.yellow,),
              Container(height: 50,color: Colors.yellowAccent,),
              Container(height: 80,color: Colors.cyan,),
              Container(height: 80,color: Colors.blueGrey,),
              Container(height: 50,color: Colors.yellowAccent,),
            ]),
          ],
        ),
      ),
    );
  }
}
