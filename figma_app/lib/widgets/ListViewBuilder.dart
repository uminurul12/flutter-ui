import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 8,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: Text(categories[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                )),
          ),
        );
      },
    );
  }
}
