import 'package:flutter/material.dart';

class ListTileExample extends StatelessWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Material(
          child: ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text("Title"),
            subtitle: Text("subtitle..."),
            // enabled: false,
            // selected: false,
            
            // isThreeLine: true,
            trailing: Icon(Icons.add),
            dense: true,
            onTap: (){
              print("onTap");
            },
            onLongPress: (){
              print("onLongPress");
            },
          ),
        ),
      ),
    );
  }
}
