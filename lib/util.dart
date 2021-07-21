import 'package:flutter/material.dart';

pagePush(BuildContext context,Widget page){
  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>page));
}

pagePop(BuildContext context){
  Navigator.of(context).pop();
}
