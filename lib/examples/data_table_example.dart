import 'package:flutter/material.dart';

class DataTableExample extends StatelessWidget {
  const DataTableExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      color: Colors.white,
      child: DataTable(
        columns: const [
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Age")),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text("张三"),showEditIcon: true),
            DataCell(Text("22")),
          ]),
          DataRow(
              selected: true,
              cells: [
            DataCell(Text("李四")),
            DataCell(Text("25")),
          ]),
          DataRow(
              cells: [
                DataCell(FlutterLogo()),
                DataCell(Text("25")),
              ]),
          DataRow(cells: [
            DataCell(Text("请填写姓名"),placeholder: true),
            DataCell(Text("18")),
          ]),
        ],
      ),
    );
  }
}
