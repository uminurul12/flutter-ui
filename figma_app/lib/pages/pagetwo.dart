// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/avatar.dart';
import 'package:flutter_ui/widgets/listview.dart';

class PageTwo extends StatelessWidget {
  PageTwo({super.key});
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
    Colors.brown,
    Colors.grey,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyListView());
  }
}
