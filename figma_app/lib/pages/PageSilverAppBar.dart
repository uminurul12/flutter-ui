// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MySilverAppBar extends StatefulWidget {
  const MySilverAppBar({super.key});

  @override
  State<MySilverAppBar> createState() => _MySilverAppBarState();
}

class _MySilverAppBarState extends State<MySilverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "UNISNU Jepara",
                style: TextStyle(color: Colors.black),
              ),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.blue[200],
                height: 100,
                child: Center(
                  child: Text(
                    "Item $index",
                    textScaler: const TextScaler.linear(2),
                  ),
                ),
              );
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}
