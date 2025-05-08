import 'package:flutter/material.dart';

class WrapContent extends StatelessWidget {
  const WrapContent({
    super.key,
    required this.colors,
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 10,
              children: colors.map((color) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.grey),
                      color: color,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 15,
                            offset: Offset.zero),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ));
  }
}
